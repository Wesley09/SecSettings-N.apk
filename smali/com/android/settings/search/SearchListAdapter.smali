.class public Lcom/android/settings/search/SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/search/SearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/CharSequence;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/search/SearchItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "objects"    # [Lcom/android/settings/search/SearchItem;
    .param p4, "keyWord"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 25
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 28
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/CharSequence;

    .line 145
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$1;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 164
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$2;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 35
    iput p2, p0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    .line 36
    iput-object p4, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/CharSequence;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/SearchListAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/search/SearchItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    array-length v14, v14

    if-nez v14, :cond_1

    .line 55
    :cond_0
    const/4 v9, 0x0

    .line 142
    :goto_0
    return-object v9

    .line 58
    :cond_1
    move-object/from16 v9, p2

    .line 60
    .local v9, "row":Landroid/view/View;
    if-nez v9, :cond_8

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 62
    .local v3, "inflator":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 64
    new-instance v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    .line 65
    .local v5, "itemHolder":Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    const v14, 0x7f0b03d5

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 66
    const v14, 0x7f0b03d6

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 67
    const v14, 0x7f0b03d7

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .end local v3    # "inflator":Landroid/view/LayoutInflater;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    aget-object v4, v14, p1

    .line 76
    .local v4, "item":Lcom/android/settings/search/SearchItem;
    if-eqz v4, :cond_7

    .line 77
    iget-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    iget v15, v4, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, "keyWordString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/CharSequence;

    if-eqz v14, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    :cond_2
    const/4 v13, 0x0

    .line 83
    .local v13, "title":Ljava/lang/String;
    iget-object v14, v4, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    if-nez v14, :cond_9

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v15, v4, Lcom/android/settings/search/SearchItem;->titleResId:J

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 88
    :goto_2
    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .local v11, "spanTitle":Landroid/text/Spannable;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, "indexof":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 91
    .local v7, "length":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_3

    .line 92
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xff0001

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v15, v7, v2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v14, v2, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 93
    :cond_3
    iget-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/4 v12, 0x0

    .line 97
    .local v12, "summary":Ljava/lang/String;
    iget-object v14, v4, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    if-nez v14, :cond_a

    .line 98
    iget-wide v14, v4, Lcom/android/settings/search/SearchItem;->summaryResId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v15, v4, Lcom/android/settings/search/SearchItem;->summaryResId:J

    long-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 103
    :cond_4
    :goto_3
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    .local v10, "spanSummary":Landroid/text/Spannable;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 106
    const/4 v14, -0x1

    if-eq v2, v14, :cond_5

    .line 107
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xff0001

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v15, v7, v2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v14, v2, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 108
    :cond_5
    const-string v14, "null"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 109
    iget-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_4
    const v14, 0x7f0b03d8

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 116
    .local v8, "menuTypeLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 118
    new-instance v1, Lcom/android/settings/search/SearchDirectSettingUpdate;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Lcom/android/settings/search/SearchDirectSettingUpdate;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "curentState":Lcom/android/settings/search/SearchDirectSettingUpdate;
    iget-object v14, v4, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-string v15, "location_toggle"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 120
    const/4 v14, 0x1

    iput v14, v4, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 138
    :cond_6
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/view/View;->setId(I)V

    .line 140
    .end local v1    # "curentState":Lcom/android/settings/search/SearchDirectSettingUpdate;
    .end local v2    # "indexof":I
    .end local v6    # "keyWordString":Ljava/lang/String;
    .end local v7    # "length":I
    .end local v8    # "menuTypeLayout":Landroid/widget/LinearLayout;
    .end local v10    # "spanSummary":Landroid/text/Spannable;
    .end local v11    # "spanTitle":Landroid/text/Spannable;
    .end local v12    # "summary":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 71
    .end local v4    # "item":Lcom/android/settings/search/SearchItem;
    .end local v5    # "itemHolder":Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    .restart local v5    # "itemHolder":Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    goto/16 :goto_1

    .line 86
    .restart local v4    # "item":Lcom/android/settings/search/SearchItem;
    .restart local v6    # "keyWordString":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_9
    iget-object v13, v4, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 101
    .restart local v2    # "indexof":I
    .restart local v7    # "length":I
    .restart local v11    # "spanTitle":Landroid/text/Spannable;
    .restart local v12    # "summary":Ljava/lang/String;
    :cond_a
    iget-object v12, v4, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto :goto_3

    .line 111
    .restart local v10    # "spanSummary":Landroid/text/Spannable;
    :cond_b
    iget-object v14, v5, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
