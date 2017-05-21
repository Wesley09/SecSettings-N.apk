.class public Lcom/android/settings/rhud6661/fragments/DensityChanger;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DensityChanger.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;,
        Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field mClearMarketData:Landroid/preference/Preference;

.field protected mContext:Landroid/content/Context;

.field mCustomDensity:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field mOpenMarket:Landroid/preference/Preference;

.field mReboot:Landroid/preference/Preference;

.field mRebootClearData:Landroid/preference/Preference;

.field mStockDensity:Landroid/preference/ListPreference;

.field newDensityValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/rhud6661/fragments/DensityChanger$1;

    invoke-direct {v0, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$1;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    iput-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mHandler:Landroid/os/Handler;

    .line 284
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/rhud6661/fragments/DensityChanger;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/rhud6661/fragments/DensityChanger;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/rhud6661/fragments/DensityChanger;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/rhud6661/fragments/DensityChanger;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->setLcdDensity(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/rhud6661/fragments/DensityChanger;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/rhud6661/fragments/DensityChanger;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/rhud6661/fragments/DensityChanger;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->showRootDeniedInfoDialog()V

    return-void
.end method

.method private setLcdDensity(I)Z
    .locals 3
    .param p1, "newDensity"    # I

    .prologue
    .line 257
    const-string v0, "rw"

    invoke-static {v0}, Lcom/android/settings/rhud6661/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 258
    new-instance v0, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct {v0}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->showRootDeniedInfoDialog()V

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_0
    const-string v0, "ro"

    invoke-static {v0}, Lcom/android/settings/rhud6661/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 264
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showRootDeniedInfoDialog()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f091453

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v1, 0x7f091454

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 277
    const v1, 0x7f091321

    new-instance v2, Lcom/android/settings/rhud6661/fragments/DensityChanger$8;

    invoke-direct {v2, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$8;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v2, 0x7f0700c9

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mContext:Landroid/content/Context;

    .line 88
    const-string v2, "ro.sf.lcd_density"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "currentDensity":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 90
    .local v1, "prefs":Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f091455

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091456

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091458

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$2;

    invoke-direct {v4, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$2;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f091457

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    const-string v2, "stock_density"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mStockDensity:Landroid/preference/ListPreference;

    .line 102
    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mStockDensity:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v2, "reboot"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mReboot:Landroid/preference/Preference;

    .line 105
    const-string v2, "clear_market_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mClearMarketData:Landroid/preference/Preference;

    .line 106
    const-string v2, "reboot_cleardata"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mRebootClearData:Landroid/preference/Preference;

    .line 107
    const-string v2, "open_market"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mOpenMarket:Landroid/preference/Preference;

    .line 109
    const-string v2, "lcd_density"

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mCustomDensity:Landroid/preference/ListPreference;

    .line 110
    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mCustomDensity:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const/4 v2, 0x0

    const v5, 0x7f090143

    .line 163
    iget-object v3, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 165
    .local v0, "factory":Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    return-object v2

    .line 167
    :pswitch_0
    const v3, 0x7f0401c5

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "textEntryView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09144d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09144e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$3;

    invoke-direct {v4, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$3;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 194
    .end local v1    # "textEntryView":Landroid/view/View;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09144f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091450

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091451

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;

    invoke-direct {v4, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$7;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091452

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;

    invoke-direct {v4, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$6;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$5;

    invoke-direct {v4, p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger$5;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mCustomDensity:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    move-object v0, p2

    .line 235
    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09144c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->showDialog(I)V

    .line 253
    .end local v0    # "strValue":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 240
    .restart local v0    # "strValue":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    .line 241
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->showDialog(I)V

    goto :goto_0

    .line 244
    .end local v0    # "strValue":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mStockDensity:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 245
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    .line 246
    iget v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    invoke-direct {p0, v2}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->setLcdDensity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mStockDensity:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09143c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 125
    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mReboot:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 128
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v4, "Resetting density"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 158
    .end local v2    # "pm":Landroid/os/PowerManager;
    :goto_0
    return v3

    .line 131
    :cond_0
    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mClearMarketData:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    .line 133
    new-instance v4, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;Lcom/android/settings/rhud6661/fragments/DensityChanger$1;)V

    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mRebootClearData:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 139
    .restart local v2    # "pm":Landroid/os/PowerManager;
    const-string v4, "Clear market data"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mOpenMarket:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_MARKET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, "openMarket":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 149
    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f091447

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "openMarket":Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    return-void
.end method
