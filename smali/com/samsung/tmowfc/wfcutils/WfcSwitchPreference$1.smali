.class Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;
.super Ljava/lang/Object;
.source "WfcSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 68
    # getter for: Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->access$100(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 75
    :goto_1
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference$1;->this$0:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    # invokes: Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onSwitchClicked(Z)V
    invoke-static {v0, p2}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->access$200(Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;Z)V

    goto :goto_1
.end method
