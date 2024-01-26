.class public final Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;
.super Ljava/lang/Object;
.source "ActivityProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final button12:Landroid/widget/Button;

.field public final helloMsg:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final linearLayout2:Landroid/widget/LinearLayout;

.field public final profile:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scrollView2:Landroid/widget/ScrollView;

.field public final settings:Landroid/widget/Button;

.field public final shop:Landroid/widget/Button;

.field public final spasite:Landroid/widget/TextView;

.field public final textView11:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "button12"    # Landroid/widget/Button;
    .param p3, "helloMsg"    # Landroid/widget/TextView;
    .param p4, "imageView"    # Landroid/widget/ImageView;
    .param p5, "linearLayout2"    # Landroid/widget/LinearLayout;
    .param p6, "profile"    # Landroid/widget/Button;
    .param p7, "scrollView2"    # Landroid/widget/ScrollView;
    .param p8, "settings"    # Landroid/widget/Button;
    .param p9, "shop"    # Landroid/widget/Button;
    .param p10, "spasite"    # Landroid/widget/TextView;
    .param p11, "textView11"    # Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p2, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->button12:Landroid/widget/Button;

    .line 62
    iput-object p3, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->helloMsg:Landroid/widget/TextView;

    .line 63
    iput-object p4, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->imageView:Landroid/widget/ImageView;

    .line 64
    iput-object p5, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->linearLayout2:Landroid/widget/LinearLayout;

    .line 65
    iput-object p6, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->profile:Landroid/widget/Button;

    .line 66
    iput-object p7, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->scrollView2:Landroid/widget/ScrollView;

    .line 67
    iput-object p8, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->settings:Landroid/widget/Button;

    .line 68
    iput-object p9, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->shop:Landroid/widget/Button;

    .line 69
    iput-object p10, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->spasite:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->textView11:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;

    .line 100
    move-object/from16 v0, p0

    const v1, 0x7f08006b

    .line 101
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 102
    .local v2, "button12":Landroid/widget/Button;
    if-eqz v2, :cond_9

    .line 106
    const v1, 0x7f0800ea

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 108
    .local v15, "helloMsg":Landroid/widget/TextView;
    if-eqz v15, :cond_8

    .line 112
    const v1, 0x7f0800f7

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    .line 114
    .local v16, "imageView":Landroid/widget/ImageView;
    if-eqz v16, :cond_7

    .line 118
    const v1, 0x7f080114

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/LinearLayout;

    .line 120
    .local v17, "linearLayout2":Landroid/widget/LinearLayout;
    if-eqz v17, :cond_6

    .line 124
    const v1, 0x7f08017b

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Button;

    .line 126
    .local v18, "profile":Landroid/widget/Button;
    if-eqz v18, :cond_5

    .line 130
    const v1, 0x7f080191

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ScrollView;

    .line 132
    .local v19, "scrollView2":Landroid/widget/ScrollView;
    if-eqz v19, :cond_4

    .line 136
    const v1, 0x7f0801ae

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    .line 138
    .local v20, "settings":Landroid/widget/Button;
    if-eqz v20, :cond_3

    .line 142
    const v1, 0x7f0801b1

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/Button;

    .line 144
    .local v21, "shop":Landroid/widget/Button;
    if-eqz v21, :cond_2

    .line 148
    const v1, 0x7f0801c0

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 150
    .local v22, "spasite":Landroid/widget/TextView;
    if-eqz v22, :cond_1

    .line 154
    const v1, 0x7f0801ee

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "textView11":Landroid/widget/TextView;
    if-eqz v23, :cond_0

    .line 160
    new-instance v24, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v24

    .line 157
    :cond_0
    goto :goto_0

    .line 151
    .end local v23    # "textView11":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 145
    .end local v22    # "spasite":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 139
    .end local v21    # "shop":Landroid/widget/Button;
    :cond_3
    goto :goto_0

    .line 133
    .end local v20    # "settings":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 127
    .end local v19    # "scrollView2":Landroid/widget/ScrollView;
    :cond_5
    goto :goto_0

    .line 121
    .end local v18    # "profile":Landroid/widget/Button;
    :cond_6
    goto :goto_0

    .line 115
    .end local v17    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 109
    .end local v16    # "imageView":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 103
    .end local v15    # "helloMsg":Landroid/widget/TextView;
    :cond_9
    nop

    .line 163
    .end local v2    # "button12":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 87
    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->bind(Landroid/view/View;)Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/angara/coffeeshop/databinding/ActivityProfileBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
