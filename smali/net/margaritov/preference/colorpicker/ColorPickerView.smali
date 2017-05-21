.class public Lnet/margaritov/preference/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/high16 v6, 0x41f00000    # 30.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    move-object v5, v0

    const/high16 v6, 0x41a00000    # 20.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    move-object v5, v0

    const/high16 v6, 0x41200000    # 10.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v5, v0

    const/high16 v6, 0x40a00000    # 5.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    move-object v5, v0

    const/16 v6, 0xff

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    move-object v5, v0

    const/high16 v6, 0x43b40000    # 360.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v5, v0

    const v6, -0xe3e3e4

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    move-object v5, v0

    const v6, -0x919192

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Point;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 152
    move-object v5, v0

    invoke-direct {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 12

    .prologue
    .line 378
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v3, v7

    .line 379
    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move v4, v7

    .line 381
    new-instance v7, Landroid/graphics/Point;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object v5, v7

    .line 383
    move-object v7, v5

    move v8, v4

    move v9, v1

    int-to-float v9, v9

    move v10, v4

    mul-float/2addr v9, v10

    const/16 v10, 0xff

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 384
    move-object v7, v5

    move-object v8, v3

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 386
    move-object v7, v5

    move-object v0, v7

    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 13

    .prologue
    .line 210
    move-object v0, p0

    const/16 v6, 0x169

    new-array v6, v6, [I

    move-object v2, v6

    .line 212
    const/4 v6, 0x0

    move v3, v6

    .line 213
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    const/4 v7, 0x0

    if-ge v6, v7, :cond_0

    .line 217
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 214
    :cond_0
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x3

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v4

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    aput v8, v6, v7

    .line 213
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private calculateRequiredOffset()F
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v2, v4

    .line 203
    move v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v2, v4

    .line 205
    move v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    move v0, v4

    return v0
.end method

.method private chooseHeight(II)I
    .locals 6

    .prologue
    .line 687
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    move v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    .line 688
    :cond_0
    move v4, v2

    move v0, v4

    .line 690
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 6

    .prologue
    .line 679
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    move v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    .line 680
    :cond_0
    move v4, v2

    move v0, v4

    .line 682
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v1

    iget-boolean v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    if-nez v12, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v4, v12

    .line 306
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    move-object v12, v2

    move-object v13, v4

    iget v13, v13, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    move-object v14, v4

    iget v14, v14, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    move-object v15, v4

    iget v15, v15, Landroid/graphics/RectF;->right:F

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v15, v15, v16

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 316
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x0

    move-object v15, v1

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x1

    move-object v15, v1

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x2

    move-object v15, v1

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v15, v13, v14

    move-object v5, v12

    .line 319
    move-object v12, v5

    invoke-static {v12}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    move v6, v12

    .line 320
    const/4 v12, 0x0

    move-object v13, v5

    invoke-static {v12, v13}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v12

    move v7, v12

    .line 322
    move-object v12, v1

    new-instance v13, Landroid/graphics/LinearGradient;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v4

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v7

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v13, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 326
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v13, v1

    iget-object v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v12

    .line 328
    move-object v12, v2

    move-object v13, v4

    move-object v14, v1

    iget-object v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 330
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v13, ""

    if-eq v12, v13, :cond_2

    .line 331
    move-object v12, v2

    move-object v13, v1

    iget-object v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v14, v4

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    move-object v15, v4

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    :cond_2
    const/4 v12, 0x4

    int-to-float v12, v12

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v12, v13

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v8, v12

    .line 336
    move-object v12, v1

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v12

    move-object v9, v12

    .line 338
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object v10, v12

    .line 339
    move-object v12, v10

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    move v14, v8

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 340
    move-object v12, v10

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    move v14, v8

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->right:F

    .line 341
    move-object v12, v10

    move-object v13, v4

    iget v13, v13, Landroid/graphics/RectF;->top:F

    move-object v14, v1

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->top:F

    .line 342
    move-object v12, v10

    move-object v13, v4

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    move-object v14, v1

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    .line 344
    move-object v12, v2

    move-object v13, v10

    const/4 v14, 0x2

    int-to-float v14, v14

    const/4 v15, 0x2

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v3, v8

    .line 269
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    move-object v8, v1

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->right:F

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 278
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v8, :cond_0

    .line 279
    move-object v8, v0

    new-instance v9, Landroid/graphics/LinearGradient;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object v14, v3

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    move-object v15, v0

    invoke-direct {v15}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v15

    const/16 v16, 0x0

    check-cast v16, [F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 280
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v8

    .line 283
    :cond_0
    move-object v8, v1

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    const/4 v8, 0x4

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v4, v8

    .line 287
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    move-object v5, v8

    .line 289
    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    move-object v6, v8

    .line 290
    move-object v8, v6

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 291
    move-object v8, v6

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 292
    move-object v8, v6

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move v10, v4

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 293
    move-object v8, v6

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move v10, v4

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 296
    move-object v8, v1

    move-object v9, v6

    const/4 v10, 0x2

    int-to-float v10, v10

    const/4 v11, 0x2

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v3, v8

    .line 236
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->right:F

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v8, :cond_0

    .line 242
    move-object v8, v0

    new-instance v9, Landroid/graphics/LinearGradient;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->left:F

    move-object v14, v3

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    const/4 v15, -0x1

    const/high16 v16, -0x1000000

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 246
    :cond_0
    const/4 v8, 0x3

    new-array v8, v8, [F

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x0

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v11, v9, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    move v4, v8

    .line 248
    move-object v8, v0

    new-instance v9, Landroid/graphics/LinearGradient;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v3

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move-object v14, v3

    iget v14, v14, Landroid/graphics/RectF;->top:F

    const/4 v15, -0x1

    move/from16 v16, v4

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 250
    new-instance v8, Landroid/graphics/ComposeShader;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11, v12}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    move-object v5, v8

    .line 251
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v8

    .line 253
    move-object v8, v1

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {v8, v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v8

    move-object v6, v8

    .line 257
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    move-object v8, v1

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v13, v0

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v9, -0x222223

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    move-object v8, v1

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 7

    .prologue
    .line 709
    move-object v0, p0

    const/16 v4, 0xc8

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v2, v4

    .line 711
    move-object v4, v0

    iget-boolean v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v4, :cond_0

    .line 712
    move v4, v2

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v2, v4

    .line 715
    :cond_0
    move v4, v2

    move v0, v4

    return v0
.end method

.method private getPrefferedWidth()I
    .locals 7

    .prologue
    .line 696
    move-object v0, p0

    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v4

    move v2, v4

    .line 698
    move-object v4, v0

    iget-boolean v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v4, :cond_0

    .line 699
    move v4, v2

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move v2, v4

    .line 703
    :cond_0
    move v4, v2

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v0, v4

    return v0
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 12

    .prologue
    .line 351
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v3, v7

    .line 352
    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move v4, v7

    .line 354
    new-instance v7, Landroid/graphics/Point;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object v5, v7

    .line 356
    move-object v7, v5

    move v8, v4

    move v9, v1

    move v10, v4

    mul-float/2addr v9, v10

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 357
    move-object v7, v5

    move-object v8, v3

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 359
    move-object v7, v5

    move-object v0, v7

    return-object v0
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    .line 157
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 158
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 159
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 160
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 161
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 163
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v3

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    .line 165
    move-object v2, v0

    invoke-direct {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->initPaintTools()V

    .line 168
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 169
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 175
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 176
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 177
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 178
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 179
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 180
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 183
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v3, -0xe3e3e4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    .line 633
    :goto_0
    return v0

    .line 601
    :cond_0
    const/4 v8, 0x0

    move v3, v8

    .line 603
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    move v4, v8

    .line 604
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    move v5, v8

    .line 607
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move v9, v4

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 608
    move-object v8, v0

    const/4 v9, 0x1

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 610
    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v9

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 612
    const/4 v8, 0x1

    move v3, v8

    .line 633
    :cond_1
    :goto_1
    move v8, v3

    move v0, v8

    goto :goto_0

    .line 613
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move v9, v4

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 615
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 617
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v8

    move-object v6, v8

    .line 619
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 620
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x1

    aget v9, v9, v10

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 622
    const/4 v8, 0x1

    move v3, v8

    goto :goto_1

    .line 623
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move v9, v4

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 625
    move-object v8, v0

    const/4 v9, 0x2

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 627
    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v9

    iput v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 629
    const/4 v8, 0x1

    move v3, v8

    goto :goto_1
.end method

.method private pointToAlpha(I)I
    .locals 9

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v3, v6

    .line 441
    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    move v4, v6

    .line 443
    move v6, v1

    int-to-float v6, v6

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 444
    const/4 v6, 0x0

    move v1, v6

    .line 451
    :goto_0
    const/16 v6, 0xff

    move v7, v1

    const/16 v8, 0xff

    mul-int/lit16 v7, v7, 0xff

    move v8, v4

    div-int/2addr v7, v8

    rsub-int v6, v7, 0xff

    move v0, v6

    return v0

    .line 445
    :cond_0
    move v6, v1

    int-to-float v6, v6

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 446
    move v6, v4

    move v1, v6

    goto :goto_0

    .line 448
    :cond_1
    move v6, v1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    move v1, v6

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 9

    .prologue
    .line 423
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v3, v6

    .line 425
    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move v4, v6

    .line 427
    move v6, v1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 428
    const/4 v6, 0x0

    move v1, v6

    .line 435
    :goto_0
    const/high16 v6, 0x43b40000    # 360.0f

    move v7, v1

    const/high16 v8, 0x43b40000    # 360.0f

    mul-float/2addr v7, v8

    move v8, v4

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move v0, v6

    return v0

    .line 429
    :cond_0
    move v6, v1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 430
    move v6, v4

    move v1, v6

    goto :goto_0

    .line 432
    :cond_1
    move v6, v1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    move v1, v6

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 14

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v4, v9

    .line 393
    const/4 v9, 0x2

    new-array v9, v9, [F

    move-object v5, v9

    .line 395
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    move v6, v9

    .line 396
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move v7, v9

    .line 398
    move v9, v1

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 399
    const/4 v9, 0x0

    move v1, v9

    .line 406
    :goto_0
    move v9, v2

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 407
    const/4 v9, 0x0

    move v2, v9

    .line 415
    :goto_1
    move-object v9, v5

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v6

    div-float/2addr v11, v12

    move v12, v1

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 416
    move-object v9, v5

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v7

    div-float/2addr v12, v13

    move v13, v2

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 418
    move-object v9, v5

    move-object v0, v9

    return-object v0

    .line 400
    :cond_0
    move v9, v1

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 401
    move v9, v6

    move v1, v9

    goto :goto_0

    .line 403
    :cond_1
    move v9, v1

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    move v1, v9

    goto :goto_0

    .line 408
    :cond_2
    move v9, v2

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 409
    move v9, v7

    move v2, v9

    goto :goto_1

    .line 411
    :cond_3
    move v9, v2

    move-object v10, v4

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    move v2, v9

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 13

    .prologue
    .line 364
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v4, v9

    .line 365
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move v5, v9

    .line 366
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    move v6, v9

    .line 368
    new-instance v9, Landroid/graphics/Point;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    move-object v7, v9

    .line 370
    move-object v9, v7

    move v10, v1

    move v11, v6

    mul-float/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 371
    move-object v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v2

    sub-float/2addr v10, v11

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 373
    move-object v9, v7

    move-object v0, v9

    return-object v0
.end method

.method private setUpAlphaRect()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 764
    move-object/from16 v0, p0

    move-object v8, v0

    iget-boolean v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v8, :cond_0

    .line 776
    :goto_0
    return-void

    .line 766
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v2, v8

    .line 768
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v3, v8

    .line 769
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v4, v8

    .line 770
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move v5, v8

    .line 771
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move v6, v8

    .line 773
    move-object v8, v0

    new-instance v9, Landroid/graphics/RectF;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v3

    move v12, v4

    move v13, v6

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 775
    move-object v8, v0

    new-instance v9, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x5

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v10, v11}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    .line 776
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 752
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v2, v8

    .line 754
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v3, v8

    .line 755
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v4, v8

    .line 756
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move-object v9, v0

    iget-boolean v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v9, :cond_0

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v9, v10

    :goto_0
    sub-float/2addr v8, v9

    move v5, v8

    .line 757
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move v6, v8

    .line 759
    move-object v8, v0

    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v3

    move v12, v4

    move v13, v6

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void

    .line 756
    :cond_0
    const/4 v9, 0x0

    int-to-float v9, v9

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 736
    move-object/from16 v0, p0

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v2, v9

    .line 737
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    sub-float/2addr v9, v10

    move v3, v9

    .line 739
    move-object v9, v0

    iget-boolean v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v9, :cond_0

    .line 740
    move v9, v3

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v3, v9

    .line 743
    :cond_0
    move-object v9, v2

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    move v4, v9

    .line 744
    move-object v9, v2

    iget v9, v9, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    move v5, v9

    .line 745
    move v9, v5

    move v10, v3

    add-float/2addr v9, v10

    move v6, v9

    .line 746
    move v9, v4

    move v10, v3

    add-float/2addr v9, v10

    move v7, v9

    .line 748
    move-object v9, v0

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v4

    move v13, v5

    move v14, v7

    move v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 943
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getAlphaSliderVisible()Z
    .locals 3

    .prologue
    .line 898
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    move v0, v2

    return v0
.end method

.method public getBorderColor()I
    .locals 3

    .prologue
    .line 810
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    move v0, v2

    return v0
.end method

.method public getColor()I
    .locals 8

    .prologue
    .line 819
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDrawingOffset()F
    .locals 3

    .prologue
    .line 868
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move v0, v2

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 3

    .prologue
    .line 910
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    move v0, v2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
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
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 227
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 228
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 639
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    const/4 v11, 0x0

    move v4, v11

    .line 640
    const/4 v11, 0x0

    move v5, v11

    .line 642
    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    move v6, v11

    .line 643
    move v11, v2

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    move v7, v11

    .line 645
    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    move v8, v11

    .line 646
    move v11, v2

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    move v9, v11

    .line 648
    move-object v11, v0

    move v12, v6

    move v13, v8

    invoke-direct {v11, v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v11

    move v8, v11

    .line 649
    move-object v11, v0

    move v12, v7

    move v13, v9

    invoke-direct {v11, v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v11

    move v9, v11

    .line 651
    move-object v11, v0

    iget-boolean v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v11, :cond_2

    .line 653
    move v11, v8

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v11, v12

    float-to-int v11, v11

    move v5, v11

    .line 656
    move v11, v5

    move v12, v9

    if-gt v11, v12, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v11

    const-string v12, "landscape"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 657
    :cond_0
    move v11, v9

    move v5, v11

    .line 658
    move v11, v5

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v4, v11

    .line 675
    :goto_0
    move-object v11, v0

    move v12, v4

    move v13, v5

    invoke-virtual {v11, v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    .line 660
    :cond_1
    move v11, v8

    move v4, v11

    goto :goto_0

    .line 664
    :cond_2
    move v11, v9

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v4, v11

    .line 666
    move v11, v4

    move v12, v8

    if-le v11, v12, :cond_3

    .line 667
    move v11, v8

    move v4, v11

    .line 668
    move v11, v8

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v5, v11

    goto :goto_0

    .line 670
    :cond_3
    move v11, v9

    move v5, v11

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 723
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 724
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 725
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v1

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 726
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 727
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v2

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 729
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpSatValRect()V

    .line 730
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpHueRect()V

    .line 731
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v3, v5

    .line 557
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 583
    :goto_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 585
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 586
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v7, 0x3

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v10, v8, v9

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 589
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 590
    const/4 v5, 0x1

    move v0, v5

    .line 594
    :goto_1
    return v0

    .line 561
    :pswitch_0
    move-object v5, v0

    new-instance v6, Landroid/graphics/Point;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 563
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v5

    move v3, v5

    .line 565
    goto :goto_0

    .line 569
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v5

    move v3, v5

    .line 571
    goto :goto_0

    .line 575
    :pswitch_2
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Point;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 577
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v5

    move v3, v5

    .line 579
    goto :goto_0

    .line 594
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_1

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 459
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 460
    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 462
    const/4 v12, 0x0

    move v6, v12

    .line 465
    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 467
    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v12, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    move v12, v6

    if-eqz v12, :cond_c

    .line 540
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v12, :cond_1

    .line 541
    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v14, 0x3

    new-array v14, v14, [F

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v13

    invoke-interface {v12, v13}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 544
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 545
    const/4 v12, 0x1

    move v1, v12

    .line 549
    :goto_1
    return v1

    .line 471
    :pswitch_0
    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move v13, v4

    const/high16 v14, 0x42480000    # 50.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move v7, v12

    .line 474
    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move v13, v5

    const/high16 v14, 0x42480000    # 50.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v8, v12

    .line 476
    move v12, v7

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 477
    const/4 v12, 0x0

    move v7, v12

    .line 482
    :cond_2
    :goto_2
    move v12, v8

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 483
    const/4 v12, 0x0

    move v8, v12

    .line 488
    :cond_3
    :goto_3
    move-object v12, v1

    move v13, v7

    iput v13, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 489
    move-object v12, v1

    move v13, v8

    iput v13, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 491
    const/4 v12, 0x1

    move v6, v12

    .line 493
    goto/16 :goto_0

    .line 478
    :cond_4
    move v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 479
    const/high16 v12, 0x3f800000    # 1.0f

    move v7, v12

    goto :goto_2

    .line 484
    :cond_5
    move v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 485
    const/high16 v12, 0x3f800000    # 1.0f

    move v8, v12

    goto :goto_3

    .line 497
    :pswitch_1
    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v9, v12

    .line 499
    move v12, v9

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 500
    const/4 v12, 0x0

    move v9, v12

    .line 505
    :cond_6
    :goto_4
    move-object v12, v1

    move v13, v9

    iput v13, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 507
    const/4 v12, 0x1

    move v6, v12

    .line 509
    goto/16 :goto_0

    .line 501
    :cond_7
    move v12, v9

    const/high16 v13, 0x43b40000    # 360.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 502
    const/high16 v12, 0x43b40000    # 360.0f

    move v9, v12

    goto :goto_4

    .line 513
    :pswitch_2
    move-object v12, v1

    iget-boolean v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v12, :cond_8

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v12, :cond_9

    .line 514
    :cond_8
    const/4 v12, 0x0

    move v6, v12

    .line 531
    :goto_5
    goto/16 :goto_0

    .line 517
    :cond_9
    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v12, v12

    move v13, v4

    const/16 v14, 0xa

    int-to-float v14, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 519
    move v12, v10

    const/4 v13, 0x0

    if-ge v12, v13, :cond_b

    .line 520
    const/4 v12, 0x0

    move v10, v12

    .line 525
    :cond_a
    :goto_6
    move-object v12, v1

    move v13, v10

    iput v13, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 528
    const/4 v12, 0x1

    move v6, v12

    goto :goto_5

    .line 521
    :cond_b
    move v12, v10

    const/16 v13, 0xff

    if-le v12, v13, :cond_a

    .line 522
    const/16 v12, 0xff

    move v10, v12

    goto :goto_6

    .line 549
    :cond_c
    move-object v12, v1

    move-object v13, v2

    invoke-super {v12, v13}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    move v1, v12

    goto/16 :goto_1

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 921
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 931
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 932
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_0

    .line 880
    :goto_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 887
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 888
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 889
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 890
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 892
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->requestLayout()V

    :cond_0
    return-void

    .line 879
    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    .line 803
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 828
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 840
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v7, v1

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    move v4, v7

    .line 842
    const/4 v7, 0x3

    new-array v7, v7, [F

    move-object v5, v7

    .line 844
    move v7, v1

    move-object v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 846
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 847
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 848
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 849
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x2

    aget v8, v8, v9

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 851
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v7, :cond_0

    .line 852
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v9, 0x3

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-interface {v7, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 855
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 902
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 904
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method
