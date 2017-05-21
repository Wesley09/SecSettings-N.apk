.class Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 80
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 81
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
    invoke-static {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "language":Ljava/lang/String;
    const-string v3, "HandwritingLanguagePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Handwriting language : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handwriting_language"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "language"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
