.class public Lcom/android/settings/dsb/DnbChoice;
.super Landroid/preference/ListPreference;
.source "DnbChoice.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DnbChoice;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 28
    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DnbChoice;->update()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 15
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/settings/dsb/DnbChoice;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dnb_color_type"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 16
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/settings/dsb/DnbChoice;->update()V

    .line 17
    const/4 v6, 0x1

    move v0, v6

    return v0
.end method

.method update()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DnbChoice;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dnb_color_type"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 22
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/android/settings/dsb/DnbChoice;->setValue(Ljava/lang/String;)V

    return-void
.end method
