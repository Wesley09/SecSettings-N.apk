.class Lcom/android/settings/AirViewEnabler$3;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewEnabler;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

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

    .line 140
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$100(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # invokes: Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$200(Lcom/android/settings/AirViewEnabler;)V

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # getter for: Lcom/android/settings/AirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewEnabler;->access$100(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Settings.System.AIR_VIEW_MASTER_ONOFF"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$3;->this$0:Lcom/android/settings/AirViewEnabler;

    # invokes: Lcom/android/settings/AirViewEnabler;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/AirViewEnabler;->access$300(Lcom/android/settings/AirViewEnabler;Z)V

    goto :goto_0
.end method
