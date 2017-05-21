.class public Lcom/android/settings/FeatureSettingsSetupWizard;
.super Landroid/app/Activity;
.source "FeatureSettingsSetupWizard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettingsSetupWizard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettingsSetupWizard;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->setEasyMode()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setEasyMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.easylauncher"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "isEasy":I
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 109
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/content/ComponentName;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v8

    .line 131
    .local v0, "components":[Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.android.launcher2.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v2, "mDefaultCN":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 133
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v4, "com.sec.android.app.easylauncher"

    const-string v5, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .restart local v2    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {v4, v3, v5, v0, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0908d0

    const v6, 0x7f09066c

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 46
    :cond_0
    const v4, 0x7f04007e

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->setContentView(I)V

    .line 48
    const v4, 0x7f0b0057

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "button_next":Landroid/view/View;
    new-instance v4, Lcom/android/settings/FeatureSettingsSetupWizard$1;

    invoke-direct {v4, p0}, Lcom/android/settings/FeatureSettingsSetupWizard$1;-><init>(Lcom/android/settings/FeatureSettingsSetupWizard;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 76
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is Button instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 77
    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, "nextBtn":Landroid/widget/Button;
    const-string v4, ""

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "original_str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, -0xa

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 83
    .restart local v1    # "nextBtn":Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "original_str":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v1    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is LinearLayout instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, "nextBtnText":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 91
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 94
    :cond_6
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
