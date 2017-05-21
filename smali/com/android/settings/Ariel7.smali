.class public Lcom/android/settings/Ariel7;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Ariel7.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f0700d6

    invoke-virtual {p0, v0}, Lcom/android/settings/Ariel7;->addPreferencesFromResource(I)V

    .line 24
    return-void
.end method
