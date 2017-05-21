.class public Lcom/android/settings/accounts/SyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/SyncSettings;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/accounts/SyncSettings;->startAddAccountSettings()V

    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 207
    .local v1, "parent":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 208
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/AccountPreference;

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 3
    .param p1, "acctPref"    # Lcom/android/settings/AccountPreference;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 186
    return-void
.end method

.method private startAddAccountSettings()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 194
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 18
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 221
    const/4 v12, 0x0

    .line 222
    .local v12, "isShownFacebook":Z
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p1

    array-length v15, v0

    .local v15, "n":I
    :goto_1
    if-ge v10, v15, :cond_9

    .line 223
    aget-object v7, p1, v10

    .line 224
    .local v7, "account":Landroid/accounts/Account;
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 226
    .local v5, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x1

    .line 227
    .local v17, "showAccount":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 228
    const/16 v17, 0x0

    .line 229
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v14, :cond_2

    aget-object v16, v9, v11

    .line 230
    .local v16, "requestedAuthority":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    const/16 v17, 0x1

    .line 238
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "requestedAuthority":Ljava/lang/String;
    :cond_2
    const-string v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.osp.app.signin"

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 240
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v13, v2, :cond_6

    .line 241
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.calendar"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    :cond_3
    const/16 v17, 0x0

    .line 244
    const-string v2, "AccountSettings"

    const-string v3, "removed samsung account for CMCC operator"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 229
    .end local v13    # "j":I
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "requestedAuthority":Ljava/lang/String;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 259
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "requestedAuthority":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    .line 261
    const/4 v8, 0x0

    .line 270
    .local v8, "accountToReplace":Landroid/accounts/Account;
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 271
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v8, :cond_8

    move-object v3, v7

    :goto_4
    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 273
    .local v1, "preference":Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    .end local v1    # "preference":Lcom/android/settings/AccountPreference;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "accountToReplace":Landroid/accounts/Account;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "accountToReplace":Landroid/accounts/Account;
    :cond_8
    move-object v3, v8

    .line 271
    goto :goto_4

    .line 277
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accountToReplace":Landroid/accounts/Account;
    .end local v17    # "showAccount":Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->onSyncStateUpdated()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/SyncSettings;->startAddAccountSettings()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 101
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 290
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 293
    .local v0, "accPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    .end local v0    # "accPref":Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super/range {p0 .. p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    .line 108
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_0

    instance-of v11, v10, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 110
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v11, 0x40800000    # 4.0f

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 111
    .local v8, "paddingTop":I
    const/high16 v11, 0x40a00000    # 5.0f

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 113
    .local v7, "paddingLR":I
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    .local v0, "addButton":Landroid/widget/Button;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v2, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const v11, 0x7f0908b4

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(I)V

    .line 118
    new-instance v11, Lcom/android/settings/accounts/SyncSettings$1;

    invoke-direct {v11, p0}, Lcom/android/settings/accounts/SyncSettings$1;-><init>(Lcom/android/settings/accounts/SyncSettings;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    .local v6, "okButton":Landroid/widget/Button;
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const v11, 0x104000a

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(I)V

    .line 128
    new-instance v11, Lcom/android/settings/accounts/SyncSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings/accounts/SyncSettings$2;-><init>(Lcom/android/settings/accounts/SyncSettings;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    .local v9, "space":Landroid/view/View;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v7, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032e

    invoke-direct {v1, v11, v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    .local v1, "bottomLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const v11, -0x333334

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 143
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 144
    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v11, v10

    .line 149
    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 153
    .local v4, "list":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 154
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 158
    .end local v0    # "addButton":Landroid/widget/Button;
    .end local v1    # "bottomLayout":Landroid/widget/LinearLayout;
    .end local v2    # "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "list":Landroid/view/View;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "okButton":Landroid/widget/Button;
    .end local v7    # "paddingLR":I
    .end local v8    # "paddingTop":I
    .end local v9    # "space":Landroid/view/View;
    :cond_0
    return-object v10
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 171
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 172
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/SyncSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 176
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 174
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 167
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 202
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
