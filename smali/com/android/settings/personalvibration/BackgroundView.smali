.class public Lcom/android/settings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/settings/personalvibration/BackgroundView$Stage;,
        Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const-wide/16 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const-wide/16 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "oval"    # Landroid/graphics/RectF;
    .param p3, "useCenter"    # Z
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 177
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 177
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 190
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 191
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 190
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    :cond_2
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 206
    .end local v6    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_6

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 216
    :cond_5
    :goto_4
    return-void

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 3

    .prologue
    .line 363
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredHeight()I

    move-result v1

    .line 98
    .local v1, "Height":I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getMeasuredWidth()I

    move-result v3

    .line 99
    .local v3, "Width":I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 101
    iget v8, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v8

    .line 102
    .local v4, "dpi":F
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .local v5, "height":I
    const-string v8, "PersonalVibration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canvas height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v8, 0x7

    new-array v8, v8, [Landroid/graphics/Paint;

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    .line 107
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    aput-object v10, v8, v9

    .line 108
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    int-to-double v9, v1

    const-wide/high16 v11, 0x4029000000000000L    # 12.5

    div-double/2addr v9, v11

    double-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 115
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 120
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 124
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 129
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 132
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0xab

    const/16 v11, 0xda

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v10, v8, v9

    .line 136
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v0, v8

    .line 144
    .local v0, "BigOvalOffset":F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v2, v8

    .line 153
    .local v2, "SmallOvalOffset":F
    :goto_0
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    sub-float/2addr v9, v0

    int-to-float v10, v1

    sub-float/2addr v10, v0

    invoke-direct {v8, v0, v0, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    .line 154
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    sub-float/2addr v9, v2

    int-to-float v10, v1

    sub-float/2addr v10, v2

    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    .line 157
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v1

    int-to-float v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    .line 160
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    .line 162
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020533

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020538

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    .line 167
    new-instance v8, Landroid/os/SystemVibrator;

    invoke-direct {v8}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    .line 168
    sget-object v8, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 170
    return-void

    .line 145
    .end local v0    # "BigOvalOffset":F
    .end local v2    # "SmallOvalOffset":F
    :cond_0
    const/high16 v8, 0x43700000    # 240.0f

    cmpl-float v8, v4, v8

    if-nez v8, :cond_5

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_1

    const/16 v8, 0x3c0

    if-eq v5, v8, :cond_4

    :cond_1
    const/16 v8, 0x3c0

    if-ne v7, v8, :cond_2

    const/16 v8, 0x21c

    if-eq v5, v8, :cond_4

    :cond_2
    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_3

    const/16 v8, 0x320

    if-eq v5, v8, :cond_4

    :cond_3
    const/16 v8, 0x320

    if-ne v7, v8, :cond_5

    const/16 v8, 0x1e0

    if-ne v5, v8, :cond_5

    .line 147
    :cond_4
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v8, v9

    .line 148
    .restart local v0    # "BigOvalOffset":F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v2, v8, v9

    .restart local v2    # "SmallOvalOffset":F
    goto/16 :goto_0

    .line 150
    .end local v0    # "BigOvalOffset":F
    .end local v2    # "SmallOvalOffset":F
    :cond_5
    mul-int/lit8 v8, v1, 0xb

    div-int/lit16 v8, v8, 0x90

    int-to-float v8, v8

    const/high16 v9, 0x40200000    # 2.5f

    sub-float v0, v8, v9

    .line 151
    .restart local v0    # "BigOvalOffset":F
    div-int/lit8 v8, v1, 0x1d

    int-to-float v8, v8

    const/high16 v9, 0x40200000    # 2.5f

    sub-float v2, v8, v9

    .restart local v2    # "SmallOvalOffset":F
    goto/16 :goto_0
.end method

.method public isTimerRunning()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v5, 0x3fe66666    # 1.8f

    const/4 v4, 0x2

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    .line 222
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 228
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 229
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 230
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 235
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 236
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 237
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_1

    .line 374
    :cond_0
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v4, 0x0

    .line 426
    :goto_0
    return v4

    .line 380
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 382
    .local v0, "action":I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    packed-switch v0, :pswitch_data_0

    .line 426
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 385
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 387
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 390
    iget-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 397
    :goto_2
    new-instance v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/settings/personalvibration/BackgroundView$floatValue;-><init>()V

    .line 398
    .local v2, "temp":Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    .line 399
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 400
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v2    # "temp":Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_2

    .line 406
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 407
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 409
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 410
    .local v3, "temp2":Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 412
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 417
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 422
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_1

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    .line 353
    return-void
.end method

.method public setPauseTimer()V
    .locals 3

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 298
    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->validateLastValue()Z

    .line 303
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 304
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 307
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 311
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 312
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    .line 316
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 318
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 314
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_1
.end method

.method public setRunPlayTimer()V
    .locals 6

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 263
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 264
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 265
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 268
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    return-void
.end method

.method public setRunRecordingTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 245
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 247
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 251
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 252
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 256
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 258
    :cond_0
    return-void
.end method

.method public setStopTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 273
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 278
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 279
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 281
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 282
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 284
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 285
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 287
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 289
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    .line 293
    return-void
.end method

.method public validateLastValue()Z
    .locals 7

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 330
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 331
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 332
    const/4 v2, 0x0

    .line 348
    :goto_0
    return v2

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 335
    .local v1, "temp2":Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 336
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 337
    iput v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 341
    :goto_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 343
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 346
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 339
    :cond_2
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_1
.end method
