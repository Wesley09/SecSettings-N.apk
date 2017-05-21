.class public Lcom/android/settings/RingtoneSettingTabActivity;
.super Landroid/app/TabActivity;
.source "RingtoneSettingTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;

.field private static final multiSimNum:I


# instance fields
.field private mActivePhone:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 109
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 172
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 176
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 177
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 182
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 184
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "RingtoneTabAcitivy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sim ListPreference SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    packed-switch v2, :pswitch_data_0

    .line 216
    :goto_2
    return-object v1

    .line 178
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 182
    goto :goto_1

    .line 188
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    goto :goto_2

    .line 191
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    goto :goto_2

    .line 194
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    goto :goto_2

    .line 197
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020415

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    goto :goto_2

    .line 200
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    goto :goto_2

    .line 203
    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020411

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    goto :goto_2

    .line 206
    :pswitch_6
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    goto :goto_2

    .line 209
    :pswitch_7
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    goto :goto_2

    .line 212
    :pswitch_8
    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2

    .line 186
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
    .line 156
    const/4 v0, 0x0

    .line 159
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupSimTab(I)V
    .locals 6
    .param p1, "simSlot"    # I

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "sim Id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "tabName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "tab_title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/RingtoneSettingTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .end local v1    # "tab_title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 83
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 85
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/RingtoneSettingTabActivity;->setupSimTab(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->configureActionBar()V

    .line 92
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->finish()V

    .line 99
    const/4 v0, 0x1

    return v0

    .line 96
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 143
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    sget v3, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 144
    sget-object v3, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, "simIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v2}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    sget-object v3, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    .local v1, "simName":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "simIcon":Landroid/widget/ImageView;
    .end local v1    # "simName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "tabName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iput v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "tabName":Ljava/lang/String;
    :cond_1
    return-void
.end method
