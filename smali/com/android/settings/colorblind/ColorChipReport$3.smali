.class Lcom/android/settings/colorblind/ColorChipReport$3;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorblind/ColorChipReport;->CreateNegativeColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/colorblind/ColorChipReport;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/colorblind/ColorChipReport;->CheckTestRecord()V
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$100(Lcom/android/settings/colorblind/ColorChipReport;)V

    .line 411
    return-void
.end method
