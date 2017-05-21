.class public Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    move-object v3, v0

    const/16 v4, 0xa

    iput v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 51
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    .line 52
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v4, -0x343435

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generatePatternBitmap()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v9, v0

    invoke-virtual {v9}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/4 v10, 0x0

    if-le v9, v10, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    if-gt v9, v10, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v9, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-instance v9, Landroid/graphics/Canvas;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v9

    .line 106
    new-instance v9, Landroid/graphics/Rect;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v9

    .line 107
    const/4 v9, 0x1

    move v4, v9

    .line 108
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    if-le v9, v10, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    move v9, v4

    move v6, v9

    .line 111
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-le v9, v10, :cond_3

    .line 123
    move v9, v4

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_3
    move v4, v9

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 113
    :cond_3
    move-object v9, v3

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 114
    move-object v9, v3

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 115
    move-object v9, v3

    move-object v10, v3

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 116
    move-object v9, v3

    move-object v10, v3

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 118
    move-object v9, v2

    move-object v10, v3

    move v11, v6

    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    move v9, v6

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    :goto_5
    move v6, v9

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 118
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_4

    .line 120
    :cond_5
    const/4 v9, 0x1

    goto :goto_5

    .line 123
    :cond_6
    const/4 v9, 0x1

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v3, v6

    .line 81
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v4, v6

    .line 83
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v6, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 84
    move-object v6, v0

    move v7, v3

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v6, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    .line 86
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Alpha is not supported by this drawwable."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ColorFilter is not supported by this drawwable."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
