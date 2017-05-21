.class Lcom/android/settings/SimListPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field ViewResourceID:I

.field index:I

.field otherSimIndex:I

.field final synthetic this$0:Lcom/android/settings/SimListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "selected"    # I

    .prologue
    const/4 v0, 0x0

    .line 615
    iput-object p1, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    .line 616
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 611
    iput v0, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 612
    iput v0, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->otherSimIndex:I

    .line 617
    iput p5, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->index:I

    .line 618
    iput p3, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 619
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "selected"    # I
    .param p6, "otherSim"    # I

    .prologue
    const/4 v0, 0x0

    .line 621
    iput-object p1, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    .line 622
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 611
    iput v0, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 612
    iput v0, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->otherSimIndex:I

    .line 623
    iput p5, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->index:I

    .line 624
    iput p3, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 625
    iput p6, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->otherSimIndex:I

    .line 626
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 633
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040151

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 636
    .local v4, "row":Landroid/view/View;
    const v8, 0x7f0b0406

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 637
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v8, v8, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, p1

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    const v8, 0x7f0b0407

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Checkable;

    .line 642
    .local v7, "text_radio":Landroid/widget/Checkable;
    const v8, 0x7f0b0409

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 645
    .local v6, "simName":Landroid/widget/TextView;
    const v8, 0x7f0b040a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 646
    .local v5, "simListSummary":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v8, v8, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v8, v8, p1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->this$0:Lcom/android/settings/SimListPreference;

    iget-object v8, v8, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, p1

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    iget v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    const v9, 0x7f040152

    if-eq v8, v9, :cond_3

    .line 651
    rem-int/lit8 v8, p1, 0x2

    if-nez v8, :cond_2

    # getter for: Lcom/android/settings/SimListPreference;->mPlmnSIM1:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SimListPreference;->access$600()Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "plmn":Ljava/lang/String;
    :goto_0
    const-string v8, "SimListPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "plmn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPlmnSIM1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/settings/SimListPreference;->mPlmnSIM1:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SimListPreference;->access$600()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPlmnSIM2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/settings/SimListPreference;->mPlmnSIM2:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SimListPreference;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    .end local v3    # "plmn":Ljava/lang/String;
    :goto_1
    iget v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->ViewResourceID:I

    const v9, 0x7f040152

    if-ne v8, v9, :cond_0

    .line 662
    iget v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->otherSimIndex:I

    if-ne p1, v8, :cond_0

    .line 665
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object v8, v7

    .line 666
    check-cast v8, Lcom/android/settings/widget/list/CheckableRelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->setEnable(Z)V

    .line 671
    :cond_0
    iget v8, p0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;->index:I

    if-ne p1, v8, :cond_1

    move-object v2, p3

    .line 672
    check-cast v2, Landroid/widget/ListView;

    .line 673
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v8, 0x0

    invoke-virtual {v2, p1, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 674
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 677
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_1
    return-object v4

    .line 651
    :cond_2
    # getter for: Lcom/android/settings/SimListPreference;->mPlmnSIM2:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SimListPreference;->access$700()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 657
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
