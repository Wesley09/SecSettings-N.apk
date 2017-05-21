.class Lcom/android/settings/deviceinfo/Status$3;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)V

    .line 274
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # getter for: Lcom/android/settings/deviceinfo/Status;->mActivePhone:I
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;I)V

    .line 279
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/Status;->access$700(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    .line 284
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # getter for: Lcom/android/settings/deviceinfo/Status;->mActivePhone:I
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength(ILandroid/telephony/SignalStrength;)V

    .line 289
    return-void
.end method
