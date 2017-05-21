.class Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$2;
.super Ljava/lang/Object;
.source "HandwritingLocalePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mLocaleInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    invoke-static {}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->access$000()[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v1, v2, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->language:Ljava/lang/String;

    .line 95
    .local v1, "language":Ljava/lang/String;
    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "handwriting_language"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;

    # invokes: Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->closeFragment()V
    invoke-static {v2}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;)V

    .line 101
    return-void
.end method
