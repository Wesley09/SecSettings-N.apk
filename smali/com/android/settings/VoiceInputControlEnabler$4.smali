.class Lcom/android/settings/VoiceInputControlEnabler$4;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;

.field final synthetic val$check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$4;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler$4;->val$check:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$4;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$4;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    # getter for: Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voiceinputcontrol_showNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_0
    return-void
.end method
