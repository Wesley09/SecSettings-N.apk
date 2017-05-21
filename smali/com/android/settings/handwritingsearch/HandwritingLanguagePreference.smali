.class public Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;
.super Landroid/preference/DialogPreference;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;,
        Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
    }
.end annotation


# static fields
.field private static mHelper:Lcom/android/settings/handwritingsearch/RMHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    .line 40
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    .line 111
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 122
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 50
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    .line 51
    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->setDialogLayoutResource(I)V

    .line 52
    const v0, 0x7f091322

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->setDialogTitle(I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 235
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    aget-object v2, p2, v1

    .line 240
    :goto_1
    return-object v2

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v24, Lcom/android/settings/handwritingsearch/RMHelper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    sput-object v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    .line 131
    sget-object v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, "mLangList":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v12, v0

    .line 133
    .local v12, "langLength":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 134
    .local v21, "resources":Landroid/content/res/Resources;
    const v24, 0x1070009

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 136
    .local v22, "specialLocaleCodes":[Ljava/lang/String;
    const v24, 0x107000a

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 138
    .local v23, "specialLocaleNames":[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 140
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v20, v0

    .line 141
    .local v20, "preprocess":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/4 v8, 0x0

    .line 143
    .local v8, "finalSize":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Framework_ReplaceCountryName"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "countryFeature":Ljava/lang/String;
    const-string v3, ""

    .line 146
    .local v3, "ISO_Code":Ljava/lang/String;
    const-string v6, ""

    .line 148
    .local v6, "coutryReplaceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 149
    const/16 v24, 0x0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 150
    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 153
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    move v9, v8

    .end local v8    # "finalSize":I
    .local v9, "finalSize":I
    :goto_0
    if-ge v10, v12, :cond_6

    .line 154
    aget-object v11, v17, v10

    .line 156
    .local v11, "lang":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 157
    .local v14, "len":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v14, v0, :cond_8

    .line 158
    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, "language":Ljava/lang/String;
    const/16 v24, 0x3

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "country":Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v15, "locale":Ljava/util/Locale;
    if-nez v9, :cond_1

    .line 163
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding initial "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    .line 153
    .end local v4    # "country":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v15    # "locale":Ljava/util/Locale;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    goto :goto_0

    .line 171
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v15    # "locale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 172
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "backing up and fixing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    add-int/lit8 v25, v9, -0x1

    aget-object v25, v20, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    .line 181
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  and adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 190
    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 191
    const-string v19, ""

    .line 192
    .local v19, "numeric":Ljava/lang/String;
    const-string v18, ""

    .line 194
    .local v18, "mcc":Ljava/lang/String;
    const-string v24, "gsm.sim.operator.numeric"

    const-string v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 196
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 202
    move-object v7, v6

    .line 215
    .end local v18    # "mcc":Ljava/lang/String;
    .end local v19    # "numeric":Ljava/lang/String;
    .local v7, "displayName":Ljava/lang/String;
    :goto_2
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 208
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    .restart local v18    # "mcc":Ljava/lang/String;
    .restart local v19    # "numeric":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 210
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v18    # "mcc":Ljava/lang/String;
    .end local v19    # "numeric":Ljava/lang/String;
    :cond_4
    const-string v24, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 211
    const-string v7, "Pseudo..."

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 213
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 222
    .end local v4    # "country":Ljava/lang/String;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v11    # "lang":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "len":I
    .end local v15    # "locale":Ljava/util/Locale;
    :cond_6
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v16, v0

    .line 223
    .local v16, "localeInfos":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_7

    .line 224
    aget-object v24, v20, v10

    aput-object v24, v16, v10

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 227
    :cond_7
    return-object v16

    .end local v16    # "localeInfos":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .restart local v11    # "lang":Ljava/lang/String;
    .restart local v14    # "len":I
    :cond_8
    move v8, v9

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    goto/16 :goto_1
.end method

.method private setListValue()V
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handwriting_language"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "currentLang":Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    move v2, v1

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 109
    return-void

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    .line 61
    .local v0, "arrayLanguageInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    new-instance v1, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f040183

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;Landroid/content/Context;I[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;)V

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    .line 64
    const v1, 0x7f0b01ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    const-string v2, "Description text for the selected language : Undecided"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    const v1, 0x7f0b01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    .line 68
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->setListValue()V

    .line 74
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 77
    const v0, 0x104000a

    new-instance v1, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->setNegativeButtonText(I)V

    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 96
    return-void
.end method
