.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;
.super Ljava/lang/Object;
.source "GestureAnywhereCreateGestureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

.field final synthetic val$overlay:Landroid/gesture/GestureOverlayView;


# direct methods
.method constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    iput-object p2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;->val$overlay:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;->val$overlay:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setGesture(Landroid/gesture/Gesture;)V

    .line 104
    return-void
.end method
