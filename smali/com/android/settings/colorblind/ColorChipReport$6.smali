.class Lcom/android/settings/colorblind/ColorChipReport$6;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/colorblind/ColorChipReport;
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
    .line 508
    iput-object p1, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x1

    .line 512
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$300(Lcom/android/settings/colorblind/ColorChipReport;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClearControlListener :: onProgressChanged() is called start progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fromUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz p3, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    int-to-float v1, p2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    # setter for: Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v0, v1}, Lcom/android/settings/colorblind/ColorChipReport;->access$402(Lcom/android/settings/colorblind/ColorChipReport;F)F

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->isSwitch:Z
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$500(Lcom/android/settings/colorblind/ColorChipReport;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$600(Lcom/android/settings/colorblind/ColorChipReport;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;
    invoke-static {v1}, Lcom/android/settings/colorblind/ColorChipReport;->access$700(Lcom/android/settings/colorblind/ColorChipReport;)Lcom/android/settings/colorblind/ColorChipSettingValue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$600(Lcom/android/settings/colorblind/ColorChipReport;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;
    invoke-static {v1}, Lcom/android/settings/colorblind/ColorChipReport;->access$700(Lcom/android/settings/colorblind/ColorChipReport;)Lcom/android/settings/colorblind/ColorChipSettingValue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->cvdCalculator:Ldmc/cvd/cvdcalculator/CVDCalculator;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$900(Lcom/android/settings/colorblind/ColorChipReport;)Ldmc/cvd/cvdcalculator/CVDCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mCVDType:I
    invoke-static {v1}, Lcom/android/settings/colorblind/ColorChipReport;->access$600(Lcom/android/settings/colorblind/ColorChipReport;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mCVDseverity:F
    invoke-static {v2}, Lcom/android/settings/colorblind/ColorChipReport;->access$800(Lcom/android/settings/colorblind/ColorChipReport;)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v4}, Lcom/android/settings/colorblind/ColorChipReport;->access$400(Lcom/android/settings/colorblind/ColorChipReport;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeColorBlind(Z[I)Z

    .line 522
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mSettingValue:Lcom/android/settings/colorblind/ColorChipSettingValue;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$700(Lcom/android/settings/colorblind/ColorChipReport;)Lcom/android/settings/colorblind/ColorChipSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v1}, Lcom/android/settings/colorblind/ColorChipReport;->access$400(Lcom/android/settings/colorblind/ColorChipReport;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/colorblind/ColorChipSettingValue;->setPrefUserParameter(F)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$300(Lcom/android/settings/colorblind/ColorChipReport;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged() mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->mUserParameter:F
    invoke-static {v2}, Lcom/android/settings/colorblind/ColorChipReport;->access$400(Lcom/android/settings/colorblind/ColorChipReport;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$300(Lcom/android/settings/colorblind/ColorChipReport;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipReport$6;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/colorblind/ColorChipReport;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/colorblind/ColorChipReport;->access$300(Lcom/android/settings/colorblind/ColorChipReport;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method
