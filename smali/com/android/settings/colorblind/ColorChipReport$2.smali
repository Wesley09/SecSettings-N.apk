.class Lcom/android/settings/colorblind/ColorChipReport$2;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorblind/ColorChipReport;->CreateRetestDialog()V
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
    .line 385
    iput-object p1, p0, Lcom/android/settings/colorblind/ColorChipReport$2;->this$0:Lcom/android/settings/colorblind/ColorChipReport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 388
    return-void
.end method
