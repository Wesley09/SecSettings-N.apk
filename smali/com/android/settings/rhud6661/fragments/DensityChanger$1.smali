.class Lcom/android/settings/rhud6661/fragments/DensityChanger$1;
.super Landroid/os/Handler;
.source "DensityChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;


# direct methods
.method constructor <init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$1;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$1;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v0, v0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mClearMarketData:Landroid/preference/Preference;

    const v1, 0x7f070974

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
