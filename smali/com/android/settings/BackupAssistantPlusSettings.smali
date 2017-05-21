.class public Lcom/android/settings/BackupAssistantPlusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isContactsVUX()Z
    .locals 2

    .prologue
    .line 103
    const-string v0, "SCH-I705"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "bua_plus_contacts"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    .line 48
    const-string v0, "bua_plus_media"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 57
    iget-object v2, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->isContactsVUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 64
    :goto_0
    if-eqz v1, :cond_2

    .line 66
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/settings/BackupAssistantPlusSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    return v0

    .line 61
    :cond_0
    aget-object v1, v1, v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :try_start_1
    const-string v0, "com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 83
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    .line 87
    const-string v3, "launchBuaMediaVUXApp"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    const-string v0, "BackupAssistantPlusSettings"

    const-string v1, "cant find com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
