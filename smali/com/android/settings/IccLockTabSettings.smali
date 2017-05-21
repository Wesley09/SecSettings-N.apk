.class public Lcom/android/settings/IccLockTabSettings;
.super Landroid/app/TabActivity;
.source "IccLockTabSettings.java"


# static fields
.field private static mTabHost:Landroid/widget/TabHost;

.field private static final multiSimNum:I


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/settings/IccLockTabSettings;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 159
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 162
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 163
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 168
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 170
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "IccLockTabSettings"

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

    .line 172
    packed-switch v2, :pswitch_data_0

    .line 202
    :goto_2
    return-object v1

    .line 164
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 168
    goto :goto_1

    .line 174
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    goto :goto_2

    .line 177
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    goto :goto_2

    .line 180
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    goto :goto_2

    .line 183
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020415

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    goto :goto_2

    .line 186
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    goto :goto_2

    .line 189
    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020411

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    goto :goto_2

    .line 192
    :pswitch_6
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    goto :goto_2

    .line 195
    :pswitch_7
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    goto :goto_2

    .line 198
    :pswitch_8
    iget-object v5, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2

    .line 172
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
    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupSimTab(I)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_TAB_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockTabSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockTabSettings;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v2, "icclockTab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 127
    sget-object v1, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockTabSettings;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    .line 69
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget v1, Lcom/android/settings/IccLockTabSettings;->multiSimNum:I

    if-ge v0, v1, :cond_0

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings/IccLockTabSettings;->setupSimTab(I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockTabSettings;->configureActionBar()V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->finish()V

    .line 80
    const/4 v0, 0x1

    return v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 103
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    sget v3, Lcom/android/settings/IccLockTabSettings;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 104
    sget-object v3, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "simIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v2}, Lcom/android/settings/IccLockTabSettings;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    sget-object v3, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "simName":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/android/settings/IccLockTabSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "simIcon":Landroid/widget/ImageView;
    .end local v1    # "simName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
