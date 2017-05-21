.class public Lcom/android/settings/smartscreen/SmartScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mSmartRotationHelpText:[I

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpText:[I


# instance fields
.field private dialogTitle:I

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHelp:Landroid/view/MenuItem;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    return-void

    .line 96
    :array_0
    .array-data 4
        0x7f0b0419
        0x7f0b041a
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x7f090e31
        0x7f090e32
        0x7f090e33
        0x7f090e34
        0x7f090e35
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0x7f090e39
        0x7f090e36
        0x7f090e33
        0x7f090e34
        0x7f090e35
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 89
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 91
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    .line 107
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$1;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 490
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings$6;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 598
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$11;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void

    .line 91
    nop

    :array_0
    .array-data 4
        0x7f020478
        0x7f020479
        0x7f02047a
        0x7f02047b
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x7f020416
        0x7f020417
        0x7f020418
        0x7f020419
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0x7f02046a
        0x7f02046b
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "intent_type"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 503
    const v0, 0x7f090e2d

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 512
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e80

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090691

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$9;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$8;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$7;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 557
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 505
    const v0, 0x7f090e2f

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 507
    const v0, 0x7f090e3a

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 509
    const v0, 0x7f090e3c

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 561
    move-object v0, p3

    .line 562
    .local v0, "motion_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/smartscreen/SmartScreenSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings$10;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 578
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 579
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 282
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 256
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "SmartScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 263
    :cond_1
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 265
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 268
    :cond_2
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "pref_noti"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 233
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 235
    const-string v2, "pref_smart_scroll_noti"

    if-ne p1, v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 590
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_web"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 591
    .local v3, "internet":I
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_chrome"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 592
    .local v0, "chrome":I
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_email_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 593
    .local v1, "email":I
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_gmail_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 595
    .local v2, "gmail":I
    or-int v6, v3, v1

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->addPreferencesFromResource(I)V

    .line 117
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v0, "smartscreen_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v0, "smartscreen_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->setHasOptionsMenu(Z)V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const v0, 0x7f090fc3

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    .line 467
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 470
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 471
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 483
    const/4 v1, 0x0

    .line 486
    :goto_0
    return v1

    .line 478
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "smart_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 486
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 173
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 180
    .local v1, "value":I
    :goto_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 192
    :cond_0
    :goto_1
    return v3

    .end local v1    # "value":I
    :cond_1
    move v1, v2

    .line 178
    goto :goto_0

    .line 183
    .restart local v1    # "value":I
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "pref_smart_scroll_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    .line 188
    if-ne v1, v3, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .local v1, "value":Z
    const-string v4, "smartscreen_stay"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 202
    const-string v4, "pref_smart_stay_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 211
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 227
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 203
    :cond_2
    const-string v4, "smartscreen_rotation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 205
    const-string v4, "pref_smart_rotation_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_3
    const-string v4, "smartscreen_pause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 208
    const-string v4, "pref_smart_pause_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_4
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_sleep_mode"

    if-eqz v1, :cond_6

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :cond_5
    :goto_3
    if-eqz v1, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 215
    goto :goto_2

    .line 216
    :cond_7
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_rotation_mode"

    if-eqz v1, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    .line 218
    :cond_9
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_pause"

    if-eqz v1, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_a
    move v2, v3

    .line 219
    goto :goto_5
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 148
    const-string v0, "SmartScreenSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    return-void

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    :cond_2
    move v0, v2

    .line 155
    goto :goto_1

    :cond_3
    move v0, v2

    .line 156
    goto :goto_2

    :cond_4
    move v0, v2

    .line 157
    goto :goto_3
.end method

.method public showGuideDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 301
    .local v6, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 303
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 304
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 305
    iput-object v13, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 309
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f040159

    invoke-virtual {v4, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 310
    .local v5, "layout":Landroid/view/View;
    const v9, 0x7f0b0105

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 312
    .local v7, "mcheck":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    array-length v9, v9

    new-array v8, v9, [Landroid/widget/TextView;

    .line 314
    .local v8, "tvList":[Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-ne v9, v10, :cond_3

    .line 315
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 316
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 317
    const v9, 0x7f090e2d

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 327
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_8

    .line 329
    :cond_2
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 330
    aget-object v9, v8, v11

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 333
    const-string v1, ""

    .line 334
    .local v1, "description":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_6

    .line 335
    if-ne v3, v12, :cond_5

    .line 336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    .end local v1    # "description":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_4

    .line 319
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 320
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 321
    const v9, 0x7f090e2f

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 322
    :cond_4
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_1

    .line 323
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 324
    const v9, 0x7f090e3a

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 338
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 341
    :cond_6
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .end local v1    # "description":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_7
    :goto_3
    const v9, 0x7f0b0107

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 360
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 361
    iget v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 363
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$2;

    invoke-direct {v10, p0, v2, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings$2;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 371
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 372
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$3;

    invoke-direct {v10, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$3;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startAnimation()V

    .line 378
    return-void

    .line 343
    :cond_8
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_7

    .line 345
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 346
    aget-object v9, v8, v11

    const v10, 0x7f090e54

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090e55

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .restart local v1    # "description":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e56

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e57

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e58

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    .prologue
    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 385
    .local v8, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 387
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    .line 388
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 389
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 393
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f04015a

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 394
    .local v7, "layout":Landroid/view/View;
    const v12, 0x7f0b041b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 396
    .local v5, "helpTextTop":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e5c

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, "s":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e5d

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 398
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e5e

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 399
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e5f

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 400
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e60

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 401
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e61

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 402
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    const v12, 0x7f0b041c

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 406
    .local v3, "helpContent":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 407
    .local v2, "first":Lcom/android/settings/HelpItem;
    const v12, 0x7f090e6b

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 408
    const v12, 0x7f090e62

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 409
    const v12, 0x7f020423

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 410
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 411
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    new-instance v11, Lcom/android/settings/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 414
    .local v11, "second":Lcom/android/settings/HelpItem;
    const v12, 0x7f090e6a

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 415
    const v12, 0x7f090e63

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 416
    const v12, 0x7f020422

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 417
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 418
    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    const v12, 0x7f0b041d

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 422
    .local v4, "helpTextBottom":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e64

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 423
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e65

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 424
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e66

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 425
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e67

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 426
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v12, 0x7f0b041e

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 430
    .local v9, "mcheck":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v12, 0x7f090e3c

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$4;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings$4;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 446
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 447
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$5;

    invoke-direct {v13, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$5;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 457
    return-void
.end method
