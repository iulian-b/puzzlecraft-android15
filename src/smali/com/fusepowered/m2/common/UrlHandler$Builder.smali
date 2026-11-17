.class public Lcom/fusepowered/m2/common/UrlHandler$Builder;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private moPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private resultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private skipShowMoPubBrowser:Z

.field private supportedUrlActions:Ljava/util/EnumSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fusepowered/m2/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/fusepowered/m2/common/UrlAction;->NOOP:Lcom/fusepowered/m2/common/UrlAction;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 62
    invoke-static {}, Lcom/fusepowered/m2/common/UrlHandler;->access$000()Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->resultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    .line 64
    invoke-static {}, Lcom/fusepowered/m2/common/UrlHandler;->access$100()Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/fusepowered/m2/common/UrlHandler;
    .locals 6

    .prologue
    .line 137
    new-instance v0, Lcom/fusepowered/m2/common/UrlHandler;

    iget-object v1, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->resultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    iget-object v3, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    iget-boolean v4, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/fusepowered/m2/common/UrlHandler$ResultActions;Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;ZLcom/fusepowered/m2/common/UrlHandler$1;)V

    return-object v0
.end method

.method public withMoPubSchemeListener(Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;)Lcom/fusepowered/m2/common/UrlHandler$Builder;
    .locals 0
    .param p1, "moPubSchemeListener"    # Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->moPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    .line 116
    return-object p0
.end method

.method public withResultActions(Lcom/fusepowered/m2/common/UrlHandler$ResultActions;)Lcom/fusepowered/m2/common/UrlHandler$Builder;
    .locals 0
    .param p1, "resultActions"    # Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->resultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    .line 104
    return-object p0
.end method

.method public varargs withSupportedUrlActions(Lcom/fusepowered/m2/common/UrlAction;[Lcom/fusepowered/m2/common/UrlAction;)Lcom/fusepowered/m2/common/UrlHandler$Builder;
    .locals 1
    .param p1, "first"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "others"    # [Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 79
    return-object p0
.end method

.method public withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/fusepowered/m2/common/UrlHandler$Builder;
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fusepowered/m2/common/UrlAction;",
            ">;)",
            "Lcom/fusepowered/m2/common/UrlHandler$Builder;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "supportedUrlActions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fusepowered/m2/common/UrlAction;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->supportedUrlActions:Ljava/util/EnumSet;

    .line 92
    return-object p0
.end method

.method public withoutMoPubBrowser()Lcom/fusepowered/m2/common/UrlHandler$Builder;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/common/UrlHandler$Builder;->skipShowMoPubBrowser:Z

    .line 127
    return-object p0
.end method
