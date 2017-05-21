.class Lcom/android/settings/colorblind/ColorChipReport$4;
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
    .line 413
    iput-object p1, p0, Lcom/android/settings/colorblind/ColorChipReport$4;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

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

    .line 416
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$4;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/android/settings/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$4;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$200(Lcom/android/settings/colorblind/ColorChipReport;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 419
    return-void
.end method
