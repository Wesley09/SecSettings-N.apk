.class public Lcom/android/settings/dsb/DsbUtils;
.super Ljava/lang/Object;
.source "DsbUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceHaveNavBar(Landroid/content/Context;)Z
    .locals 8

    .prologue
    .line 11
    move-object v0, p0

    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 13
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    move-object v3, v5

    .line 14
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v5

    move v0, v5

    .line 19
    :goto_0
    return v0

    .line 16
    :cond_0
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    move-object v2, v5

    .line 17
    move-object v5, v2

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v5

    .line 19
    move-object v5, v0

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method
