.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 54
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/high16 v5, -0x1000000

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v4, v0

    const/4 v5, 0x0

    int-to-float v5, v5

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 59
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/high16 v6, -0x1000000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v5, v0

    const/4 v6, 0x0

    int-to-float v6, v6

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 64
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 13

    .prologue
    .line 214
    move v0, p0

    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 215
    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 216
    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 217
    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 219
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 220
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 223
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 224
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 227
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 228
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 231
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 232
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 235
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 276
    move-object v0, p0

    move-object v3, v0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 280
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 11

    .prologue
    .line 248
    move v0, p0

    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 249
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 250
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 252
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 253
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 256
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 257
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 260
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 261
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 264
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 136
    move-object v0, p0

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v12, 0x1f

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v2, v11

    .line 137
    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move v3, v11

    .line 138
    move v11, v2

    move v12, v2

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v4, v11

    .line 139
    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v5, v11

    .line 140
    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v6, v11

    .line 141
    move v11, v3

    move v7, v11

    .line 142
    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v5

    if-lt v11, v12, :cond_0

    .line 152
    move-object v11, v4

    move-object v0, v11

    return-object v0

    .line 143
    :cond_0
    move v11, v8

    move v9, v11

    :goto_1
    move v11, v9

    move v12, v6

    if-lt v11, v12, :cond_1

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 144
    :cond_1
    move v11, v8

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    move v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    move v11, v8

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ge v11, v12, :cond_2

    move v11, v9

    move v12, v6

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    if-lt v11, v12, :cond_4

    :cond_2
    const v11, -0x777778

    :goto_2
    move v7, v11

    .line 145
    move-object v11, v4

    move v12, v8

    move v13, v9

    move v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 146
    move v11, v8

    move v12, v9

    if-eq v11, v12, :cond_3

    .line 147
    move-object v11, v4

    move v12, v9

    move v13, v8

    move v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 143
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 144
    :cond_4
    move v11, v3

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 92
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "alphaSlider"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 95
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "hexValue"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    :cond_0
    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method private setPreviewColor()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v6, Landroid/widget/ImageView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 109
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    move-object v7, v0

    const-string v8, "widget_frame"

    const-string v9, "id"

    const-string v10, "android"

    invoke-direct {v7, v8, v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object v3, v6

    .line 110
    move-object v6, v3

    if-nez v6, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    move-object v6, v3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v10, 0x8

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    move-object v6, v3

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 120
    move v6, v4

    const/4 v7, 0x0

    if-le v6, v7, :cond_2

    .line 121
    move-object v6, v3

    const/4 v7, 0x0

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 123
    :cond_2
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 125
    move-object v6, v2

    new-instance v7, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v8, v9}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    move-object v6, v2

    move-object v7, v0

    invoke-direct {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 102
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 103
    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    move-result v5

    .line 160
    :cond_0
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 161
    move-object v5, v0

    invoke-direct {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 163
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v5

    move-object v6, v0

    move v7, v1

    new-instance v8, Ljava/lang/Integer;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6, v7}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 76
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    move-object v7, v5

    invoke-static {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 78
    move v7, v4

    new-instance v8, Ljava/lang/Integer;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    .line 81
    :goto_0
    return-object v0

    :cond_0
    move-object v7, v1

    move v8, v2

    const/high16 v9, -0x1000000

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    new-instance v8, Ljava/lang/Integer;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 171
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    if-nez v5, :cond_1

    .line 299
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_1
    move-object v5, v1

    check-cast v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v3, v5

    .line 304
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    move-object v5, v0

    move-object v6, v3

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v5, v0

    invoke-super {v5}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    move-object v2, v5

    .line 286
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 287
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .line 292
    :goto_0
    return-object v0

    .line 290
    :cond_1
    new-instance v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v3, v5

    .line 291
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 292
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v5

    :goto_0
    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    return-void

    :cond_0
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    new-instance v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 177
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v3, :cond_0

    .line 178
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 180
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v3, :cond_1

    .line 181
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    .line 183
    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 184
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
