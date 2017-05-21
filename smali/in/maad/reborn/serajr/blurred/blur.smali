.class public Lin/maad/reborn/serajr/blurred/blur;
.super Landroid/preference/PreferenceFragment;
.source "blur.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

.field public static BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public static BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

.field public static BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public static BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

.field public static BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

.field public static BLUR_RADIUS_PREFERENCE_DEFAULT:I

.field public static BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

.field public static BLUR_SCALE_PREFERENCE_DEFAULT:I

.field public static BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;


# instance fields
.field private blurradius:Landroid/preference/ListPreference;

.field private blurskala:Landroid/preference/ListPreference;

.field private dark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private light:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mix:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "hook_system_ui_blurred_expanded_panel_scale_pref"

    sput-object v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_SCALE_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_radius_pref"

    sput-object v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_RADIUS_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_light_color_pref"

    sput-object v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0xbbbbbc

    sput v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_LIGHT_COLOR_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_mixed_color_pref"

    sput-object v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0x777778

    sput v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_MIXED_COLOR_PREFERENCE_DEFAULT:I

    const-string v0, "hook_system_ui_blurred_expanded_panel_dark_color_pref"

    sput-object v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    const v0, -0x333334

    sput v0, Lin/maad/reborn/serajr/blurred/blur;->BLUR_DARK_COLOR_PREFERENCE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->addPreferencesFromResource(I)V

    .line 63
    const-string v0, "blurskala"

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    .line 64
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lin/maad/reborn/serajr/blurred/blur;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    sget v2, Lin/maad/reborn/serajr/blurred/blur;->BLUR_SCALE_PREFERENCE_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    iget-object v1, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v0, "blurradius"

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    .line 70
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lin/maad/reborn/serajr/blurred/blur;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    sget v2, Lin/maad/reborn/serajr/blurred/blur;->BLUR_RADIUS_PREFERENCE_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    iget-object v1, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    iget-object v1, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    const-string v0, "light"

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->light:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 76
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->light:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v0, "dark"

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->dark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 78
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->dark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    const-string v0, "mix"

    invoke-virtual {p0, v0}, Lin/maad/reborn/serajr/blurred/blur;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->mix:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 80
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->mix:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 91
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    iget-object v3, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 93
    sget-object v4, Lin/maad/reborn/serajr/blurred/blur;->BLUR_SCALE_PREFERENCE_KEY:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    iget-object v2, p0, Lin/maad/reborn/serajr/blurred/blur;->blurskala:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 98
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    iget-object v3, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 100
    sget-object v4, Lin/maad/reborn/serajr/blurred/blur;->BLUR_RADIUS_PREFERENCE_KEY:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    iget-object v2, p0, Lin/maad/reborn/serajr/blurred/blur;->blurradius:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->dark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v0, :cond_2

    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lin/maad/reborn/serajr/blurred/blur;->BLUR_DARK_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->light:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v0, :cond_3

    .line 114
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lin/maad/reborn/serajr/blurred/blur;->BLUR_LIGHT_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lin/maad/reborn/serajr/blurred/blur;->mix:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v0, :cond_4

    .line 122
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lin/maad/reborn/serajr/blurred/blur;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lin/maad/reborn/serajr/blurred/blur;->BLUR_MIXED_COLOR_PREFERENCE_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 127
    goto/16 :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
