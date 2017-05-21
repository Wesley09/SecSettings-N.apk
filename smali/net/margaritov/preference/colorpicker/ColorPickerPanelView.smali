.class public Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;
.super Landroid/view/View;
.source "ColorPickerPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 64
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

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    move-object v5, v0

    const v6, -0x919192

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    move-object v5, v0

    const/high16 v6, -0x1000000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    .line 65
    move-object v5, v0

    invoke-direct {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->init()V

    return-void
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 70
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 71
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    return-void
.end method

.method private setUpColorRect()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 118
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v2, v8

    .line 120
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v3, v8

    .line 121
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move v4, v8

    .line 122
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move v5, v8

    .line 123
    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move v6, v8

    .line 125
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

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 127
    move-object v8, v0

    new-instance v9, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x5

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v10, v11}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    .line 129
    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    move v0, v2

    return v0
.end method

.method public getColor()I
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    move v0, v2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    move-object v3, v5

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    if-eqz v5, :cond_0

    .line 86
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, v1

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v4, v7

    .line 98
    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v5, v7

    .line 100
    move-object v7, v0

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    return-void
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
    .line 105
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

    .line 107
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 108
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    invoke-virtual {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 109
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 110
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    invoke-virtual {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 111
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 113
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setUpColorRect()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 164
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    .line 145
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method
