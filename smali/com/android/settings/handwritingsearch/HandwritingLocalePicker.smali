.class public Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;
.super Landroid/app/ListFragment;
.source "HandwritingLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

.field private static mLocaleInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;


# instance fields
.field private mFromSearch:Z

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;

    .line 33
    sput-object v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    .line 34
    sput-object v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mLocaleInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mFromSearch:Z

    .line 91
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$2;

    invoke-direct {v0, p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$2;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;)V

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 228
    return-void
.end method

.method static synthetic access$000()[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mLocaleInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->closeFragment()V

    return-void
.end method

.method private closeFragment()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mFromSearch:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public static constructLangAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const v8, 0x10201b3

    .line 67
    .local v8, "fileId":I
    invoke-static {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-result-object v4

    .line 68
    .local v4, "localeInfo":[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    sput-object v4, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mLocaleInfo:[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 71
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;

    const v3, 0x10201b3

    move-object v1, p0

    move v2, p1

    move v6, p1

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;Landroid/view/LayoutInflater;I[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;)V

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    aget-object v2, p2, v1

    .line 225
    :goto_1
    return-object v2

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v24, Lcom/android/settings/handwritingsearch/RMHelper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    sput-object v24, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    .line 115
    sget-object v24, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "mLangList":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v12, v0

    .line 117
    .local v12, "langLength":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 118
    .local v21, "resources":Landroid/content/res/Resources;
    const v24, 0x1070009

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 119
    .local v22, "specialLocaleCodes":[Ljava/lang/String;
    const v24, 0x107000a

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 120
    .local v23, "specialLocaleNames":[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 122
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-object/from16 v20, v0

    .line 123
    .local v20, "preprocess":[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    const/4 v8, 0x0

    .line 125
    .local v8, "finalSize":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Framework_ReplaceCountryName"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "countryFeature":Ljava/lang/String;
    const-string v3, ""

    .line 127
    .local v3, "ISO_Code":Ljava/lang/String;
    const-string v6, ""

    .line 129
    .local v6, "coutryReplaceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 130
    const/16 v24, 0x0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 131
    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    move v9, v8

    .end local v8    # "finalSize":I
    .local v9, "finalSize":I
    :goto_0
    if-ge v10, v12, :cond_6

    .line 135
    aget-object v11, v17, v10

    .line 136
    .local v11, "lang":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 137
    .local v14, "len":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v14, v0, :cond_8

    .line 138
    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "language":Ljava/lang/String;
    const/16 v24, 0x3

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "country":Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v15, "locale":Ljava/util/Locale;
    if-nez v9, :cond_1

    .line 143
    const-string v24, "HandwritingLocalePicker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding initial "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    .line 134
    .end local v4    # "country":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v15    # "locale":Ljava/util/Locale;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    goto :goto_0

    .line 151
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v15    # "locale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 153
    const-string v24, "HandwritingLocalePicker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "backing up and fixing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    add-int/lit8 v25, v9, -0x1

    aget-object v25, v20, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->title:Ljava/lang/String;

    .line 160
    const-string v24, "HandwritingLocalePicker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  and adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 169
    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 170
    const-string v19, ""

    .line 171
    .local v19, "numeric":Ljava/lang/String;
    const-string v18, ""

    .line 173
    .local v18, "mcc":Ljava/lang/String;
    const-string v24, "gsm.sim.operator.numeric"

    const-string v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 175
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 180
    move-object v7, v6

    .line 192
    .end local v18    # "mcc":Ljava/lang/String;
    .end local v19    # "numeric":Ljava/lang/String;
    .local v7, "displayName":Ljava/lang/String;
    :goto_2
    const-string v24, "HandwritingLocalePicker"

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

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 185
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "finalSize":I
    .restart local v9    # "finalSize":I
    .restart local v18    # "mcc":Ljava/lang/String;
    .restart local v19    # "numeric":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 187
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v18    # "mcc":Ljava/lang/String;
    .end local v19    # "numeric":Ljava/lang/String;
    :cond_4
    const-string v24, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 188
    const-string v7, "Pseudo..."

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 190
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v4    # "country":Ljava/lang/String;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v11    # "lang":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "len":I
    .end local v15    # "locale":Ljava/util/Locale;
    :cond_6
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;

    move-object/from16 v16, v0

    .line 200
    .local v16, "localeInfos":[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_7

    .line 201
    aget-object v24, v20, v10

    aput-object v24, v16, v10

    .line 200
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 204
    :cond_7
    return-object v16

    .end local v16    # "localeInfos":[Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
    .restart local v11    # "lang":Ljava/lang/String;
    .restart local v14    # "len":I
    :cond_8
    move v8, v9

    .end local v9    # "finalSize":I
    .restart local v8    # "finalSize":I
    goto/16 :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
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
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanseState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;

    .line 42
    sget-object v2, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mContext:Landroid/content/Context;

    const v3, 0x109012c

    invoke-static {v2, v3}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->constructLangAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 43
    .local v1, "localeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_from_search"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;->mFromSearch:Z

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 61
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 62
    return-object v1
.end method
