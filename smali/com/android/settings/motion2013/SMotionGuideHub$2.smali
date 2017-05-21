.class Lcom/android/settings/motion2013/SMotionGuideHub$2;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 926
    const-string v0, "SMotionGuideHub"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 928
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$400(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    .line 941
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V

    .line 942
    return-void

    .line 930
    :cond_1
    const-string v0, "air_motion_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirScrollChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$500(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 932
    :cond_2
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$600(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 934
    :cond_3
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 935
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$700(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 936
    :cond_4
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 937
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$800(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0

    .line 938
    :cond_5
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$900(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    goto :goto_0
.end method
