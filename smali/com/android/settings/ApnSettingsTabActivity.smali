.class public Lcom/android/settings/ApnSettingsTabActivity;
.super Landroid/app/TabActivity;
.source "ApnSettingsTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;

.field private static final multiSimNum:I


# instance fields
.field private mActivePhone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private getSimIcon(I)I
    .locals 7
    .param p1, "Sim_id"    # I

    .prologue
    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 144
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 148
    .local v1, "retDrawable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 156
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 159
    .local v2, "ret_sim_icon":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SIM 2 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnSettingsTabActivity;->log(Ljava/lang/String;)V

    .line 161
    packed-switch v2, :pswitch_data_0

    .line 191
    const v1, 0x7f0203e3

    .line 194
    :goto_2
    return v1

    .line 152
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 156
    goto :goto_1

    .line 164
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f0203e3

    .line 165
    goto :goto_2

    .line 167
    :pswitch_1
    const v1, 0x7f0203e4

    .line 168
    goto :goto_2

    .line 170
    :pswitch_2
    const v1, 0x7f0203e5

    .line 171
    goto :goto_2

    .line 173
    :pswitch_3
    const v1, 0x7f0203eb

    .line 174
    goto :goto_2

    .line 176
    :pswitch_4
    const v1, 0x7f0203e9

    .line 177
    goto :goto_2

    .line 179
    :pswitch_5
    const v1, 0x7f0203e8

    .line 180
    goto :goto_2

    .line 182
    :pswitch_6
    const v1, 0x7f0203e7

    .line 183
    goto :goto_2

    .line 185
    :pswitch_7
    const v1, 0x7f0203ea

    .line 186
    goto :goto_2

    .line 188
    :pswitch_8
    const v1, 0x7f0203e6

    .line 189
    goto :goto_2

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "Sim_id"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 130
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "ApnSettingsTabActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private setupSimTab(I)V
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "simSlot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "tabName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 43
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 45
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v1, v2, :cond_0

    .line 46
    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettingsTabActivity;->setupSimTab(I)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    :cond_1
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->finish()V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->finish()V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 61
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    sget v3, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 62
    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettingsTabActivity;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "simName":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "simIcon":Landroid/widget/ImageView;
    .end local v1    # "simName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "tabName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iput v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "tabName":Ljava/lang/String;
    :cond_1
    return-void
.end method
