.class public Lcom/android/settings/dsb/DynamicSystemBarHeader;
.super Landroid/preference/PreferenceCategory;
.source "DynamicSystemBarHeader.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final G:I = 0x8

.field static final V:I


# instance fields
.field dsbEna:Landroid/preference/CheckBoxPreference;

.field dsbIconType:Landroid/preference/ListPreference;

.field dsbTypeChoice:Landroid/preference/ListPreference;

.field iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field strIE:[Ljava/lang/CharSequence;

.field strIV:[Ljava/lang/CharSequence;

.field strName:[Ljava/lang/CharSequence;

.field strVal:[Ljava/lang/CharSequence;

.field tAlpha:Ljava/lang/String;

.field tEna:Ljava/lang/String;

.field tIconD:Ljava/lang/String;

.field tIconL:Ljava/lang/String;

.field tTextD:Ljava/lang/String;

.field tTextL:Ljava/lang/String;

.field tType:Ljava/lang/String;

.field tTypeI:Ljava/lang/String;

.field textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleCheckbox"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tEna:Ljava/lang/String;

    .line 89
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleType"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tType:Ljava/lang/String;

    .line 90
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleIconDark"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tIconD:Ljava/lang/String;

    .line 91
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleIconLight"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tIconL:Ljava/lang/String;

    .line 92
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleTextLight"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTextL:Ljava/lang/String;

    .line 93
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleTextDark"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTextD:Ljava/lang/String;

    .line 94
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "titleIconType"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTypeI:Ljava/lang/String;

    .line 95
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "array"

    const-string v8, "systembar_type_v"

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strVal:[Ljava/lang/CharSequence;

    .line 96
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "array"

    const-string v8, "systembar_type_e"

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strName:[Ljava/lang/CharSequence;

    .line 97
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "array"

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_type_v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strIV:[Ljava/lang/CharSequence;

    .line 98
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    const-string v7, "array"

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_type_e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strIE:[Ljava/lang/CharSequence;

    .line 99
    move-object v4, v0

    new-instance v5, Landroid/preference/CheckBoxPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    .line 100
    move-object v4, v0

    new-instance v5, Landroid/preference/ListPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    .line 101
    move-object v4, v0

    new-instance v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 102
    move-object v4, v0

    new-instance v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 103
    move-object v4, v0

    new-instance v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 104
    move-object v4, v0

    new-instance v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 105
    move-object v4, v0

    new-instance v5, Landroid/preference/ListPreference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    return-void
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    return-void
.end method

.method private update()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strName:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strVal:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strIE:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->strIV:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tEna:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tIconD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tIconL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTextD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTextL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/dsb/DynamicSystemBarHeader;->tTypeI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setHexValueEnabled(Z)V

    .line 153
    move-object v2, v0

    invoke-direct {v2}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->updateFromRecentValue()V

    return-void
.end method

.method private updateFromRecentValue()V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_icon_type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 56
    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_ena"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v4, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v5, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_icon_l"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v6, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_icon_d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/high16 v14, -0x1000000

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v7, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_text_l"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v8, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_alpha_dark"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v9, v12

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "_text_d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/high16 v14, -0x1000000

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v10, v12

    .line 63
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    move v13, v4

    const/4 v14, 0x0

    if-eq v13, v14, :cond_0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 65
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move v13, v6

    new-instance v14, Ljava/lang/Integer;

    move/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move/from16 v15, v17

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 66
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move v13, v7

    new-instance v14, Ljava/lang/Integer;

    move/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move/from16 v15, v17

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 67
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move v13, v8

    new-instance v14, Ljava/lang/Integer;

    move/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move/from16 v15, v17

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 68
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move v13, v10

    new-instance v14, Ljava/lang/Integer;

    move/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move/from16 v15, v17

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 69
    move-object v12, v0

    iget-object v12, v12, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    const/4 v13, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method getInt(Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 113
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->update()V

    .line 114
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 115
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 116
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 117
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 118
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 119
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 120
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 121
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 122
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 123
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 124
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 125
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 126
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    .line 127
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    invoke-direct {v3, v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->a(Landroid/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 20
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbIconType:Landroid/preference/ListPreference;

    if-ne v7, v8, :cond_0

    .line 21
    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 22
    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_icon_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 24
    :cond_0
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbEna:Landroid/preference/CheckBoxPreference;

    if-ne v7, v8, :cond_1

    .line 25
    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    :goto_0
    move v5, v7

    .line 26
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_ena"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 28
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->dsbTypeChoice:Landroid/preference/ListPreference;

    if-ne v7, v8, :cond_2

    .line 29
    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 30
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 32
    :cond_2
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne v7, v8, :cond_3

    .line 33
    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 34
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_icon_l"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 36
    :cond_3
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->iconDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne v7, v8, :cond_4

    .line 37
    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 38
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_icon_d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 40
    :cond_4
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textLight:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne v7, v8, :cond_5

    .line 41
    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 42
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_text_l"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 44
    :cond_5
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/dsb/DynamicSystemBarHeader;->textDark:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne v7, v8, :cond_6

    .line 45
    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 46
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_text_d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->putInt(Ljava/lang/String;I)V

    .line 48
    :cond_6
    move-object v7, v0

    invoke-direct {v7}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->updateFromRecentValue()V

    .line 49
    const/4 v7, 0x1

    move v0, v7

    return v0

    .line 25
    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_0
.end method

.method res(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/settings/dsb/DynamicSystemBarHeader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method
