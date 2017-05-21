.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;
.super Ljava/lang/Object;
.source "GestureAnywhereCreateGestureActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;
    .param p2, "x1"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)V

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    invoke-virtual {p1}, Landroid/gesture/GestureOverlayView;->getGesture()Landroid/gesture/Gesture;

    move-result-object v1

    # setter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$102(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 152
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/gesture/Gesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getLength()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$200(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$200(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->access$102(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 145
    return-void
.end method
