.class public Lcom/chillingo/libterms/TermsUIConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public acceptButtonBackgroundImage:Ljava/lang/Integer;

.field public acceptButtonTextColor:Ljava/lang/Integer;

.field public activityBackgroundImage:Ljava/lang/Integer;

.field public ageEditTextBackgroundImage:Ljava/lang/Integer;

.field public ageEditTextColor:Ljava/lang/Integer;

.field public ageSeekBarProgressImage:Ljava/lang/Integer;

.field public ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

.field public ageSeekBarTextColor:Ljava/lang/Integer;

.field public ageSeekBarThumbImage:Ljava/lang/Integer;

.field public declineButtonBackgroundImage:Ljava/lang/Integer;

.field public declineButtonTextColor:Ljava/lang/Integer;

.field public introTextColor:Ljava/lang/Integer;

.field public introTitleColor:Ljava/lang/Integer;

.field public labelColor:Ljava/lang/Integer;

.field public linkButtonBackgroundImage:Ljava/lang/Integer;

.field public linkButtonTextColor:Ljava/lang/Integer;

.field public linkTextColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uiConfigFromList(Ljava/util/List;)Lcom/chillingo/libterms/TermsUIConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/chillingo/libterms/TermsUIConfig;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect arrayList supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v1, Lcom/chillingo/libterms/TermsUIConfig;

    invoke-direct {v1}, Lcom/chillingo/libterms/TermsUIConfig;-><init>()V

    .line 146
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->introTitleColor:Ljava/lang/Integer;

    .line 147
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->introTextColor:Ljava/lang/Integer;

    .line 148
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    .line 149
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:Ljava/lang/Integer;

    .line 150
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    .line 151
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:Ljava/lang/Integer;

    .line 152
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextColor:Ljava/lang/Integer;

    .line 153
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    .line 154
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:Ljava/lang/Integer;

    .line 155
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:Ljava/lang/Integer;

    .line 156
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextBackgroundImage:Ljava/lang/Integer;

    .line 157
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    .line 158
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

    .line 159
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarProgressImage:Ljava/lang/Integer;

    .line 160
    const/16 v0, 0xe

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarThumbImage:Ljava/lang/Integer;

    .line 161
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextColor:Ljava/lang/Integer;

    .line 162
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/chillingo/libterms/TermsUIConfig;->linkTextColor:Ljava/lang/Integer;

    .line 164
    return-object v1
.end method


# virtual methods
.method public uiConfigAsArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->introTitleColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->introTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarProgressImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarThumbImage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/chillingo/libterms/TermsUIConfig;->linkTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v0
.end method
