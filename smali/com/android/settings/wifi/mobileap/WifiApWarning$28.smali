.class Lcom/android/settings/wifi/mobileap/WifiApWarning$28;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsRoaming:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1502(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 571
    return-void
.end method
