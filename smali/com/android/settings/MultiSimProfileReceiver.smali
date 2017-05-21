.class public Lcom/android/settings/MultiSimProfileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimProfileReceiver.java"


# static fields
.field private static mSimProfile:[Lcom/android/settings/SimProfile;


# instance fields
.field private final PREFFERED:I

.field private final SLOT1:I

.field private final SLOT2:I

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private newSimFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/SimProfile;

    sput-object v0, Lcom/android/settings/MultiSimProfileReceiver;->mSimProfile:[Lcom/android/settings/SimProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/MultiSimProfileReceiver;->newSimFlag:Z

    .line 51
    iput v0, p0, Lcom/android/settings/MultiSimProfileReceiver;->SLOT1:I

    .line 52
    iput v1, p0, Lcom/android/settings/MultiSimProfileReceiver;->SLOT2:I

    .line 54
    iput v1, p0, Lcom/android/settings/MultiSimProfileReceiver;->PREFFERED:I

    .line 60
    new-instance v0, Lcom/android/settings/MultiSimProfileReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MultiSimProfileReceiver$1;-><init>(Lcom/android/settings/MultiSimProfileReceiver;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimProfileReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "MultiSimProfileReceiver"

    const-string v1, "!SecProductFeature_COMMON.SEC_PRODUCT_FEATURE_COMMON_USE_MULTISIM_SIM_PROFILE = OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public startSimManagement()V
    .locals 3

    .prologue
    .line 200
    const-string v1, "MultiSimProfileReceiver"

    const-string v2, "startSimManagement "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "MultiSimProfileReceiver"

    const-string v2, "startSimManagement:sendBroadcast sim check details"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/settings/MultiSimProfileReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
