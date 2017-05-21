.class public Lcom/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private isCurrentAPchecked:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private previousButton:Landroid/view/View;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private scanButton:Landroid/widget/Button;

.field private wifiSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConnectCaptivePortalDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSecSetupActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_CAPTIVEPORTAL_SETUPWIZARD:Z

    if-eqz v3, :cond_2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 185
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v3, "WifiSecSetupActivity"

    const-string v6, "onHandle"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "WifiSecSetupActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "WifiSecSetupActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v6, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_1

    .line 190
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 192
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    if-nez v3, :cond_2

    .line 193
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.WIFI_CAPTIVE_ACTIVITY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 197
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_4

    .line 199
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 203
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 205
    .local v2, "isConn":Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 206
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 210
    if-eqz v2, :cond_7

    .line 211
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "isConn":Z
    :cond_4
    :goto_2
    return-void

    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "isConn":Z
    :cond_5
    move v3, v5

    .line 206
    goto :goto_0

    :cond_6
    move v4, v5

    .line 208
    goto :goto_1

    .line 214
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f0b04a1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 172
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 174
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 177
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 151
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    goto :goto_0

    .line 156
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    .line 161
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0057 -> :sswitch_2
        0x7f0b054c -> :sswitch_0
        0x7f0b054d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const v5, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 94
    :cond_1
    const v1, 0x7f0401b1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 96
    const v1, 0x7f0b054c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    .line 97
    const v1, 0x7f0b054d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    .line 98
    const v1, 0x7f0b04ea

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0b04e9

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    .line 101
    const v1, 0x7f0b054e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0b054f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f0b054b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 111
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 113
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 135
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 136
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    return-void

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    return-void
.end method
