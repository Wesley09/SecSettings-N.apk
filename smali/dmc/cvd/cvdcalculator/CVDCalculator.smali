.class public Ldmc/cvd/cvdcalculator/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# instance fields
.field private SpotsU:[D

.field private SpotsV:[D

.field private mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

.field private mInputNums:[I

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->u:[D

    .line 50
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->v:[D

    .line 53
    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsU:[D

    .line 54
    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsV:[D

    .line 69
    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mInputNums:[I

    .line 71
    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    .line 79
    new-instance v0, Ldmc/cvd/cvdcalculator/ColorTransferTable;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/ColorTransferTable;-><init>()V

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    .line 80
    return-void

    .line 49
    :array_0
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    .line 50
    :array_1
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method


# virtual methods
.method public getRGBCMY(IDD)[I
    .locals 11
    .param p1, "cvdType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .prologue
    .line 279
    const/4 v8, 0x0

    .line 280
    .local v8, "firstInteger":I
    const/4 v10, 0x0

    .line 283
    .local v10, "secondInteger":I
    const/4 v9, 0x0

    check-cast v9, [I

    .line 284
    .local v9, "rgbCmy":[I
    const/16 v0, 0x9

    new-array v9, v0, [I

    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    :cond_0
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 291
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 293
    const/4 v0, 0x0

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 295
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 296
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 298
    const/4 v0, 0x1

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 300
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 301
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 303
    const/4 v0, 0x2

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 305
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 306
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 308
    const/4 v0, 0x3

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 310
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 311
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 313
    const/4 v0, 0x4

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 315
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 316
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 318
    const/4 v0, 0x5

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 320
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 321
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 323
    const/4 v0, 0x6

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 325
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 326
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 328
    const/4 v0, 0x7

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 330
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 331
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 333
    const/16 v0, 0x8

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 350
    :goto_0
    return-object v9

    .line 338
    :cond_1
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    .line 339
    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 340
    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 341
    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 342
    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    .line 343
    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 344
    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 345
    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 346
    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    goto :goto_0
.end method
