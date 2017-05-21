.class public Lcom/android/settings/colorblind/ColorChipSettingValue;
.super Ljava/lang/Object;
.source "ColorChipSettingValue.java"


# instance fields
.field public final CVD_DEUTERAN:I

.field public final CVD_NORMAL:I

.field public final CVD_PROTAN:I

.field public final CVD_TRITAN:I

.field private con:Landroid/content/Context;

.field private mCVDType:I

.field private mCVDseverity:F

.field private mUserParameter:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->CVD_PROTAN:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->CVD_DEUTERAN:I

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->CVD_TRITAN:I

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->CVD_NORMAL:I

    .line 25
    iput-object p1, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    .line 27
    return-void
.end method


# virtual methods
.method public UpdatePrefCVDSettingValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_cvdtype"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mCVDType:I

    .line 31
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_cvdseverity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mCVDseverity:F

    .line 32
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_user_parameter"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mUserParameter:F

    .line 33
    return-void
.end method

.method public getCVDType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mCVDType:I

    return v0
.end method

.method public getCVDseverity()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mCVDseverity:F

    return v0
.end method

.method public getUserParameter()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mUserParameter:F

    return v0
.end method

.method public setPrefUserParameter(F)V
    .locals 2
    .param p1, "userParam"    # F

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->con:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_user_parameter"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 74
    iput p1, p0, Lcom/android/settings/colorblind/ColorChipSettingValue;->mUserParameter:F

    .line 75
    return-void
.end method
