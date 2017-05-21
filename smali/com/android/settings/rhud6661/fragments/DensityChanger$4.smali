.class Lcom/android/settings/rhud6661/fragments/DensityChanger$4;
.super Ljava/lang/Object;
.source "DensityChanger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iput-object p2, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 174
    iget-object v3, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f09025b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 175
    .local v0, "dpi":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 176
    .local v2, "text":Landroid/text/Editable;
    const-string v3, "DensityChanger"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/settings/rhud6661/fragments/DensityChanger;->newDensityValue:I

    .line 180
    iget-object v3, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    const/16 v4, 0x66

    # invokes: Lcom/android/settings/rhud6661/fragments/DensityChanger;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->access$100(Lcom/android/settings/rhud6661/fragments/DensityChanger;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v3, v3, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mCustomDensity:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$4;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-virtual {v4}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07097d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
