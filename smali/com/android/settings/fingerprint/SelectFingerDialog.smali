.class public Lcom/android/settings/fingerprint/SelectFingerDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectFingerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mSelectedOptionItem:[Ljava/lang/String;


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private selectedFingerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/SelectFingerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SelectFingerDialog;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/SelectFingerDialog;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SelectFingerDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/SelectFingerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SelectFingerDialog;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->resetFingerprintSupportingFeatures()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/SelectFingerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SelectFingerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/SelectFingerDialog;->removeFingerprintShortcut(I)V

    return-void
.end method

.method private enrolledFingerprintNum()I
    .locals 4

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "enrolledFingerprintNum":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 309
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 310
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 309
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v0
.end method

.method private getFingerprintShortcutPermissionState(I)Ljava/lang/String;
    .locals 8
    .param p1, "fingerindex"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 244
    const/4 v3, 0x0

    .line 246
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const-string v5, "system"

    invoke-virtual {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "InitialShortcutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 250
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v7

    const-string v4, ""

    aput-object v4, v0, v6

    .line 251
    .local v0, "Checkr":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 253
    aget-object v4, v0, v6

    const-string v5, "com.android.settings.permission.shortcut_contact"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string v3, "Direct dial"

    .line 249
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    aget-object v4, v0, v6

    const-string v5, "com.android.settings.permission.shortcut_app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    const-string v3, "Applications"

    goto :goto_1

    .line 259
    :cond_2
    aget-object v4, v0, v6

    const-string v5, "com.android.settings.permission.shortcut_bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string v3, "Bookmark"

    goto :goto_1

    .line 267
    .end local v0    # "Checkr":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    return-object v3
.end method

.method private getFingerprintSupportingFeaturesStatus()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f091342

    const v4, 0x7f091341

    const/4 v3, 0x0

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_secret_box"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeFingerprintShortcut(I)V
    .locals 6
    .param p1, "fingerindex"    # I

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_print_shortcut_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "str":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "val":[Ljava/lang/String;
    const-string v2, ""

    .line 276
    .local v2, "temp":Ljava/lang/String;
    add-int/lit8 v4, p1, -0x1

    const-string v5, " "

    aput-object v5, v3, v4

    .line 277
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_print_shortcut_list"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 236
    packed-switch p2, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->finish()V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/fingerprint/SelectFingerDialog;->mSelectedOptionItem:[Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/android/settings/fingerprint/SelectFingerDialog;->mSelectedOptionItem:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f091352

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    .line 54
    const-string v2, "SelectFingerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[selectedFingerIndex] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 58
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 61
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09134f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 64
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f0b01a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mListView:Landroid/widget/ListView;

    .line 65
    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0400fd

    sget-object v5, Lcom/android/settings/fingerprint/SelectFingerDialog;->mSelectedOptionItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    const v2, 0x7f090143

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->setupAlert()V

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v3, "SelectFingerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 104
    .local v2, "quality":I
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->enrolledFingerprintNum()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 105
    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    .line 106
    const v3, 0x7f091351

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->finish()V

    .line 232
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getFingerprintSupportingFeaturesStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 110
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f091360

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getFingerprintSupportingFeaturesStatus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/SelectFingerDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/SelectFingerDialog$1;-><init>(Lcom/android/settings/fingerprint/SelectFingerDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 129
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    iget v3, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getFingerprintShortcutPermissionState(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 135
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09135f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "applications"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/SelectFingerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/SelectFingerDialog$2;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/SelectFingerDialog$2;-><init>(Lcom/android/settings/fingerprint/SelectFingerDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 154
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/SelectFingerDialog;->selectedFingerIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SelectFingerDialog;->finish()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 93
    return-void
.end method
