.class public Lcom/android/settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isBackupAppAvailable:Z

.field private isDropboxAvailable:Z

.field private isQuotaStorageAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsConnected:Z

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefDocument:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefMusics:Landroid/preference/Preference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressTimer:Landroid/os/CountDownTimer;

.field private mQuotaStorage:Landroid/preference/Preference;

.field private mRestore:Landroid/preference/Preference;

.field private mSettings:Lcom/android/settings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private mValidationStatus:I

.field private mVerifySamsungAccount:Landroid/preference/Preference;

.field public processAction:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field toastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 68
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 179
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 184
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    .line 193
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    .line 205
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 994
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # Lcom/android/settings/cloud/CloudSettings;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # Landroid/app/DialogFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudSettingsMainFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private addSamsungAccount()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 300
    .local v9, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v9, :cond_0

    .line 301
    array-length v0, v9

    if-nez v0, :cond_0

    .line 303
    const-string v8, "com.osp.app.signin"

    .line 304
    .local v8, "accountFilterType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 314
    .end local v8    # "accountFilterType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1112
    :cond_1
    return-void
.end method

.method private getLinkAccountSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "summaryText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f091148

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f091149

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09114a

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09114c

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09114b

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_0
    return-object v0

    .line 549
    :cond_1
    const-string v1, ""

    goto/16 :goto_0

    .line 552
    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    .line 555
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 558
    :cond_4
    const-string v1, ""

    goto :goto_3
.end method

.method private getPreferencesReference()V
    .locals 9

    .prologue
    const v8, 0x7f091152

    const v7, 0x7f09111b

    const v6, 0x7f0908c6

    const v4, 0x7f0908c5

    const/4 v5, 0x0

    .line 372
    const-string v2, "category_samsungservices"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 373
    const-string v2, "category_dropbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 374
    const-string v2, "pref_add_samsung_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    .line 375
    const-string v2, "pref_dataSync"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 376
    const-string v2, "pref_storage"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    .line 377
    const-string v2, "pref_backUp"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 378
    const-string v2, "pref_restore"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    .line 379
    const-string v2, "samsung_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 380
    const-string v2, "dropbox_sync_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cloud/CloudAccountPreference;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    .line 381
    const-string v2, "pref_set_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 382
    const-string v2, "pref_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 383
    const-string v2, "pref_photos"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 384
    const-string v2, "pref_videos"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 385
    const-string v2, "pref_musics"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    .line 386
    const-string v2, "pref_document"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    .line 387
    const-string v2, "pref_key_verify_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    .line 388
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 390
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 391
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 392
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 394
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091153

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091154

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091155

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091156

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091157

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091158

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isJapanDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091153

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091154

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091155

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091156

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f091158

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    const v2, 0x7f09111c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f091120

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "categoryText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 425
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 428
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 430
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-nez v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 436
    return-void
.end method

.method private static getSalesInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 344
    const-string v0, "xx"

    .line 347
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 349
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 350
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 352
    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 355
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 356
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v5, "ro.csc.sales_code"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 358
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v0, "xx"

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    .line 363
    const-string v0, "xx"

    goto :goto_0
.end method

.method private getSyncSummaryString(I)Ljava/lang/String;
    .locals 7
    .param p1, "contentsType"    # I

    .prologue
    const/4 v1, 0x3

    const v6, 0x7f091120

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 589
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 572
    :pswitch_0
    const v0, 0x7f091145

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f091149

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f091150

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :pswitch_1
    const v0, 0x7f091145

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f09114a

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f09114f

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :pswitch_2
    const v0, 0x7f091145

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f09114c

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f09114e

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v0, :cond_0

    .line 585
    const v0, 0x7f091146

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.cloudagent"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.sCloudBackupApp"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.scloud.quota"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 273
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 275
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0

    .line 259
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    goto :goto_1

    .line 264
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 265
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    goto :goto_2
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1021
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1024
    if-eqz v0, :cond_2

    .line 1025
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1027
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1029
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1031
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1040
    :goto_0
    return v0

    .line 1033
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1034
    goto :goto_0

    .line 1035
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1036
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1040
    goto :goto_0
.end method

.method public static isJapanDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSalesInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "salesCode":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x1

    .line 340
    :cond_1
    return v0
.end method

.method private onBackUpClicked()V
    .locals 4

    .prologue
    .line 886
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 887
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 889
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 906
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 908
    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    .line 909
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 910
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908b2

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 916
    :cond_0
    return-void
.end method

.method private onRestoreClicked()V
    .locals 4

    .prologue
    .line 891
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 892
    .local v0, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 893
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 894
    return-void
.end method

.method private onStorageClicked()V
    .locals 4

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.scloud.quota"

    const-string v3, "com.sec.android.scloud.quota.StorageList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 900
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 644
    new-instance v1, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 771
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v1, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 777
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudAuthentication()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_SIGNIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private requestCloudStatus()V
    .locals 3

    .prologue
    .line 617
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    .line 625
    :goto_0
    return-void

    .line 618
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDelayedProgress()V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    .prologue
    .line 631
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 637
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 285
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 286
    array-length v1, v0

    if-nez v1, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 290
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDelayedProgress()V
    .locals 6

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1095
    :cond_0
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;JJ)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    .line 1106
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1107
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 603
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 604
    if-eqz p3, :cond_1

    .line 605
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1049
    .line 1050
    const/4 v3, 0x0

    .line 1052
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 1074
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1079
    :cond_0
    return-void

    .line 1054
    :pswitch_0
    const-class v0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1056
    const v3, 0x7f091122

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_1
    const-class v0, Lcom/android/settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1060
    const v3, 0x7f091123

    .line 1061
    goto :goto_0

    .line 1063
    :pswitch_2
    const-class v0, Lcom/android/settings/cloud/CloudMusicsSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1064
    const v3, 0x7f091143

    .line 1065
    goto :goto_0

    .line 1067
    :pswitch_3
    const-class v0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1068
    const v3, 0x7f091144

    .line 1069
    goto :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1086
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1089
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1090
    return-void
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 792
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 793
    return-void
.end method

.method private updatePreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const v7, 0x7f0908aa

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 468
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->samsungAccountExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showAllPreference()V

    .line 488
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 491
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 492
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 496
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 497
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v6}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 498
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v8}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 499
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4, v9}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 500
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 502
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 503
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 504
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 505
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 507
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    const v3, 0x7f090582

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 513
    :goto_1
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    :cond_0
    :goto_6
    return-void

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 478
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 481
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 482
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 510
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 513
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 515
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 517
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 519
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 523
    :cond_7
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    const v2, 0x7f091147

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "linkAccount":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 529
    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f091120

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getLinkAccountSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    .end local v1    # "text":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 536
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 537
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 538
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 539
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 540
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 922
    packed-switch p1, :pswitch_data_0

    .line 945
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 947
    return-void

    .line 925
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 926
    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 215
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->init()V

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091139

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    .line 227
    :cond_2
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 233
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 328
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 248
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    .line 876
    :cond_0
    :goto_0
    return v7

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onRestoreClicked()V

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onStorageClicked()V

    goto :goto_0

    .line 812
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 815
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091139

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 825
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addSamsungAccount()V

    goto :goto_0

    .line 826
    :cond_6
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 827
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    goto :goto_0

    .line 828
    :cond_7
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 829
    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 830
    :cond_8
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 831
    invoke-direct {p0, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 832
    :cond_9
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 833
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 835
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto/16 :goto_0

    .line 836
    :cond_b
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 838
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 840
    array-length v0, v4

    if-lez v0, :cond_0

    .line 841
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 842
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 843
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908b2

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 849
    :cond_c
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 850
    sget-boolean v0, Lcom/android/settings/cloud/CloudSettingConstants;->C_CHINA:Z

    if-eqz v0, :cond_d

    .line 851
    const/16 v0, 0xa

    const v1, 0x7f0908d1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 853
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v6}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 857
    :cond_d
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 859
    array-length v0, v4

    if-lez v0, :cond_0

    .line 860
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 861
    const-string v0, "account"

    aget-object v1, v4, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 862
    const-string v0, "account_type"

    aget-object v1, v4, v6

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v0, "accountReturnToPrevious"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f091120

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 869
    :cond_e
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.EmailValidationView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    .line 241
    return-void
.end method

.method public showAllPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 950
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 951
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 952
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 955
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 956
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 958
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 960
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 965
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 966
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v4

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 970
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 971
    return-void
.end method

.method public showVerifyAccountPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 974
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 975
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 976
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 978
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 984
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 985
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 986
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 987
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 989
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 990
    return-void
.end method
