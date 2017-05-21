.class public Lcom/android/settings/wifi/WifiPickerActivity;
.super Landroid/preference/PreferenceActivity;
.source "WifiPickerActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field private static DBG:Z

.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field private backButton:Landroid/widget/Button;

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private nextButton:Landroid/widget/Button;

.field private skipButton:Landroid/widget/Button;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiPickerActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPickerActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiPickerActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "WifiPickerActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/WifiPickerActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v2, :cond_3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 251
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 252
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 254
    :cond_2
    const-string v2, "WifiPickerActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    if-nez v2, :cond_3

    .line 256
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiPickerActivity;->isCurrentAPchecked:Z

    .line 260
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 87
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_0
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v6, "WifiPickerActivity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const v6, 0x10202d7

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .local v0, "buttonBar":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 118
    move-object v2, p0

    .line 119
    .local v2, "context":Landroid/content/Context;
    :try_start_0
    const-string v6, "layout_inflater"

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 121
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04014d

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    .line 122
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 125
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "extra_prefs_show_button_bar"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    const-string v6, "WifiPickerActivity"

    const-string v7, "Exception while onCreate 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b0129

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b03f1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    .line 129
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b03f2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    .line 136
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$2;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b03f3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$3;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const-string v6, "extra_prefs_set_next_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const-string v6, "extra_prefs_set_next_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    .end local v1    # "buttonText":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "extra_prefs_set_back_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    const-string v6, "extra_prefs_set_back_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    .end local v1    # "buttonText":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v6, "extra_prefs_show_skip"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    :cond_2
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    .line 173
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    new-instance v6, Lcom/android/settings/wifi/WifiPickerActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiPickerActivity$4;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    return-void

    .line 156
    .restart local v1    # "buttonText":Ljava/lang/String;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "buttonText":Ljava/lang/String;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const-string v6, "WifiPickerActivity"

    const-string v7, "Exception while onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "buttonText":Ljava/lang/String;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiPickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    :cond_0
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x1

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    const-string v2, ":android:show_fragment"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 203
    .local v1, "orgIntent":Landroid/content/Intent;
    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "extra_prefs_show_button_bar"

    const-string v3, "extra_prefs_show_button_bar"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    :cond_0
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "extra_prefs_set_next_text"

    const-string v3, "extra_prefs_set_next_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_1
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const-string v2, "extra_prefs_set_back_text"

    const-string v3, "extra_prefs_set_back_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_2
    const-string v2, "wifi_show_action_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    const-string v2, "wifi_show_action_bar"

    const-string v3, "wifi_show_action_bar"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    :cond_3
    const-string v2, "wifi_show_menus"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const-string v2, "wifi_show_menus"

    const-string v3, "wifi_show_menus"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    :cond_4
    if-nez p3, :cond_5

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_5
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
