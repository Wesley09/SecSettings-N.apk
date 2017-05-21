.class final Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "HandwritingLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->constructLangAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I

.field final synthetic val$localeInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;II[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;Landroid/view/LayoutInflater;I[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    .prologue
    .line 71
    iput-object p5, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$layoutId:I

    iput-object p7, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$localeInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$layoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    const v2, 0x10201b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$localeInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;->val$localeInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 86
    return-object v1

    .line 81
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 82
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
