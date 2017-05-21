.class public Lcom/android/settings/handwritingsearch/HandwritingSearch;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandwritingSearch.java"


# instance fields
.field private mHandwritingLanguage:Landroid/preference/Preference;

.field private mSearchableSymbols:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getSelectLanguage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 47
    .local v0, "currentLang":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 51
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-result-object v3

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 57
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_1
    if-nez v4, :cond_2

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    const-string v0, "ko_KR"

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    const/4 v2, 0x0

    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 71
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 72
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 77
    :cond_2
    return-object v4

    .line 56
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "en_GB"

    goto :goto_1

    .line 70
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->addPreferencesFromResource(I)V

    .line 33
    const-string v0, "handwriting_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingSearch;->mHandwritingLanguage:Landroid/preference/Preference;

    .line 34
    const-string v0, "searchable_symbols"

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingSearch;->mSearchableSymbols:Landroid/preference/Preference;

    .line 35
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "HandwritingSearch"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingSearch;->mHandwritingLanguage:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/handwritingsearch/HandwritingSearch;->getSelectLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
