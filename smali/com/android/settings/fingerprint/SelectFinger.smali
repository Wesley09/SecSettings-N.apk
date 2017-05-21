.class public Lcom/android/settings/fingerprint/SelectFinger;
.super Landroid/app/Activity;
.source "SelectFinger.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private continueBtn:Landroid/widget/Button;

.field gesture:Landroid/view/GestureDetector;

.field private lefthand:Z

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mLeftHandImage:Landroid/widget/ImageView;

.field private mLeftHandText:Landroid/widget/TextView;

.field private mLeftIndex:Landroid/widget/ImageView;

.field private mLeftLittle:Landroid/widget/ImageView;

.field private mLeftMiddle:Landroid/widget/ImageView;

.field private mLeftRing:Landroid/widget/ImageView;

.field private mLeftThumb:Landroid/widget/ImageView;

.field private mPreviousStage:Ljava/lang/String;

.field private mRightHandImage:Landroid/widget/ImageView;

.field private mRightHandText:Landroid/widget/TextView;

.field private mRightIndex:Landroid/widget/ImageView;

.field private mRightLittle:Landroid/widget/ImageView;

.field private mRightMiddle:Landroid/widget/ImageView;

.field private mRightRing:Landroid/widget/ImageView;

.field private mRightThumb:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    .line 63
    const-string v0, "FingerprintSettings"

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mPreviousStage:Ljava/lang/String;

    return-void
.end method

.method private enrolledFingerprintNum()I
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "enrolledFingerprintNum":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/SelectFinger;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 404
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 405
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 404
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_1
    return v0
.end method

.method private getFingerState(I)Z
    .locals 5
    .param p1, "fingerIndex"    # I

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "getFingerprint":Z
    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFinger;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    .line 328
    .local v0, "fingerstatus":I
    const-string v2, "SelectFinger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFingerState [fingerIndex] ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[fingerstatus] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x1

    shl-int/2addr v2, p1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 331
    const/4 v1, 0x1

    .line 334
    :cond_0
    return v1
.end method

.method private setFingerState()V
    .locals 6

    .prologue
    const v5, 0x7f0200cd

    const v4, 0x7f0200ca

    .line 339
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    .line 341
    .local v0, "fingerstatus":I
    const-string v1, "SelectFinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fingerstatus] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 345
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftIndex:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftLittle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :goto_4
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftIndex:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 368
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftLittle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 372
    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    .line 378
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightIndex:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    .line 383
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    .line 388
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    .line 393
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightLittle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 380
    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightIndex:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 385
    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 395
    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightLittle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->updatedHandUI()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->setFingerState()V

    .line 77
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->getFingerState(I)Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/fingerprint/SelectFingerDialog;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 251
    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/SelectFinger;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 180
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->enrolledFingerprintNum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/fingerprint/FingerprintPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFinger;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->startActivity(Landroid/content/Intent;)V

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->finish()V

    goto :goto_1

    .line 185
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.fingerprint.ok"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFinger;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "isenrolled"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 194
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->finish()V

    goto :goto_1

    .line 201
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->updatedHandUI()V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->setFingerState()V

    goto :goto_1

    .line 208
    :sswitch_3
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->updatedHandUI()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->setFingerState()V

    goto :goto_1

    :sswitch_4
    move v0, v1

    .line 215
    goto :goto_0

    .line 217
    :sswitch_5
    const/4 v0, 0x2

    .line 218
    goto :goto_0

    .line 220
    :sswitch_6
    const/4 v0, 0x3

    .line 221
    goto :goto_0

    .line 223
    :sswitch_7
    const/4 v0, 0x4

    .line 224
    goto :goto_0

    .line 226
    :sswitch_8
    const/4 v0, 0x5

    .line 227
    goto :goto_0

    .line 229
    :sswitch_9
    const/4 v0, 0x6

    .line 230
    goto :goto_0

    .line 232
    :sswitch_a
    const/4 v0, 0x7

    .line 233
    goto :goto_0

    .line 235
    :sswitch_b
    const/16 v0, 0x8

    .line 236
    goto :goto_0

    .line 238
    :sswitch_c
    const/16 v0, 0x9

    .line 239
    goto :goto_0

    .line 241
    :sswitch_d
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 254
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 255
    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/SelectFinger;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x7f0b01a9 -> :sswitch_4
        0x7f0b01ac -> :sswitch_5
        0x7f0b01af -> :sswitch_6
        0x7f0b01b2 -> :sswitch_7
        0x7f0b01b5 -> :sswitch_8
        0x7f0b01b7 -> :sswitch_2
        0x7f0b01b8 -> :sswitch_2
        0x7f0b01b9 -> :sswitch_3
        0x7f0b01ba -> :sswitch_3
        0x7f0b01bb -> :sswitch_1
        0x7f0b01bc -> :sswitch_0
        0x7f0b01c5 -> :sswitch_9
        0x7f0b01c8 -> :sswitch_a
        0x7f0b01cb -> :sswitch_b
        0x7f0b01ce -> :sswitch_c
        0x7f0b01d1 -> :sswitch_d
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 85
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->gesture:Landroid/view/GestureDetector;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fingerprint/SelectFinger;->mPreviousStage:Ljava/lang/String;

    .line 88
    const-string v1, "SelectFinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/SelectFinger;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->updatedHandUI()V

    .line 91
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 273
    .local v0, "dipWidth":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 274
    .local v1, "dx":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 275
    neg-float v1, v1

    .line 276
    :cond_0
    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 277
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    if-nez v5, :cond_1

    .line 278
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFinger;->updatedHandUI()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->setFingerState()V

    .line 285
    :goto_1
    return v3

    .line 280
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    goto :goto_0

    :cond_2
    move v3, v4

    .line 285
    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFinger;->setFingerState()V

    .line 167
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->gesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method updatedHandUI()V
    .locals 7

    .prologue
    const v6, 0x7f0b01b9

    const v5, 0x7f0b01b8

    const v4, 0x7f0b01b7

    const v3, 0x7f0200c9

    const/4 v2, -0x1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->lefthand:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->setContentView(I)V

    .line 100
    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftThumb:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0b01ac

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftIndex:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftMiddle:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftRing:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0b01b5

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftLittle:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftIndex:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftMiddle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftRing:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftLittle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandText:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandImage:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0b01ba

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandText:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandImage:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0b01bb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->cancelBtn:Landroid/widget/Button;

    .line 155
    const v0, 0x7f0b01bc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->continueBtn:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->continueBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void

    .line 123
    :cond_0
    const v0, 0x7f040089

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->setContentView(I)V

    .line 126
    const v0, 0x7f0b01c5

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightThumb:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0b01c8

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightIndex:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0b01cb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightMiddle:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0b01ce

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightRing:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0b01d1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightLittle:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightIndex:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightMiddle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightRing:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightLittle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandText:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mLeftHandImage:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0b01ba

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandText:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/SelectFinger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandImage:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFinger;->mRightHandImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
