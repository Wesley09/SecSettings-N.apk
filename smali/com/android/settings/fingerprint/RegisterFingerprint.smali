.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"


# instance fields
.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mRegisterStep:Landroid/widget/ImageView;

.field private mRegisterStep2:Landroid/widget/ImageView;

.field private mRegisterStep3:Landroid/widget/ImageView;

.field private mRegisterStep4:Landroid/widget/ImageView;

.field private mRegisterText:Landroid/widget/TextView;

.field private mToken:Landroid/os/IBinder;

.field private selectedFingerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 129
    move-object v0, p1

    .line 131
    .local v0, "evt":Lcom/samsung/android/fingerprint/FingerprintEvent;
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    .line 58
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v1, 0x7f040087

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 63
    const v1, 0x7f0b01bd

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterText:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0b01bf

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0b01c0

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f0b01c2

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x1

    const v1, 0x7f090143

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020102

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->unregisterClient()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 78
    :cond_0
    return-void
.end method

.method public registerClient()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v2, "system"

    invoke-direct {v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    .line 115
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterClient()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    .line 124
    :cond_0
    return-void
.end method
