.class public Lcom/fusepowered/m2/common/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/common/UrlHandler$Builder;,
        Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;,
        Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    }
.end annotation


# static fields
.field private static final EMPTY_CLICK_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

.field private static final EMPTY_MOPUB_SCHEME_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;


# instance fields
.field private mAlreadySucceeded:Z

.field private mMoPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSkipShowMoPubBrowser:Z

.field private mSupportedUrlActions:Ljava/util/EnumSet;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/fusepowered/m2/common/UrlHandler$1;

    invoke-direct {v0}, Lcom/fusepowered/m2/common/UrlHandler$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    .line 149
    new-instance v0, Lcom/fusepowered/m2/common/UrlHandler$2;

    invoke-direct {v0}, Lcom/fusepowered/m2/common/UrlHandler$2;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/fusepowered/m2/common/UrlHandler$ResultActions;Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;Z)V
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resultActions"    # Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "moPubSchemeListener"    # Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "skipShowMoPubBrowser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fusepowered/m2/common/UrlAction;",
            ">;",
            "Lcom/fusepowered/m2/common/UrlHandler$ResultActions;",
            "Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "supportedUrlActions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fusepowered/m2/common/UrlAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    .line 176
    iput-object p2, p0, Lcom/fusepowered/m2/common/UrlHandler;->mResultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    .line 177
    iput-object p3, p0, Lcom/fusepowered/m2/common/UrlHandler;->mMoPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    .line 178
    iput-boolean p4, p0, Lcom/fusepowered/m2/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mAlreadySucceeded:Z

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/fusepowered/m2/common/UrlHandler$ResultActions;Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;ZLcom/fusepowered/m2/common/UrlHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/EnumSet;
    .param p2, "x1"    # Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    .param p3, "x2"    # Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/fusepowered/m2/common/UrlHandler$1;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/m2/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/fusepowered/m2/common/UrlHandler$ResultActions;Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fusepowered/m2/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method static synthetic access$100()Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fusepowered/m2/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method


# virtual methods
.method getMoPubSchemeListener()Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mMoPubSchemeListener:Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method getResultActions()Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mResultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method getSupportedUrlActions()Ljava/util/EnumSet;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fusepowered/m2/common/UrlAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromUserInteraction"    # Z

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "throwExceptionOnFailure":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lcom/fusepowered/m2/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromUserInteraction"    # Z
    .param p4, "throwExceptionOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->NOOP:Lcom/fusepowered/m2/common/UrlAction;

    .line 236
    .local v4, "lastFailedUrlAction":Lcom/fusepowered/m2/common/UrlAction;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    const-string v2, "Attempted to handle empty url."

    .line 262
    .local v2, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/fusepowered/m2/common/UrlHandler;->mResultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    invoke-interface {v6, p2, v4}, Lcom/fusepowered/m2/common/UrlHandler$ResultActions;->urlHandlingFailed(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V

    .line 264
    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 265
    if-eqz p4, :cond_2

    .line 266
    new-instance v6, Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;

    invoke-direct {v6, v2}, Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 239
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .local v0, "destinationUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/fusepowered/m2/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-virtual {v6}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/m2/common/UrlAction;

    .line 241
    .local v5, "urlAction":Lcom/fusepowered/m2/common/UrlAction;
    invoke-virtual {v5, v0}, Lcom/fusepowered/m2/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    :try_start_0
    invoke-virtual {v5, p0, p1, v0, p3}, Lcom/fusepowered/m2/common/UrlAction;->handleUrl(Lcom/fusepowered/m2/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 244
    iget-boolean v6, p0, Lcom/fusepowered/m2/common/UrlHandler;->mAlreadySucceeded:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/fusepowered/m2/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    invoke-virtual {v6, v5}, Lcom/fusepowered/m2/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    invoke-virtual {v6, v5}, Lcom/fusepowered/m2/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/fusepowered/m2/common/UrlHandler;->mResultActions:Lcom/fusepowered/m2/common/UrlHandler$ResultActions;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/fusepowered/m2/common/UrlHandler$ResultActions;->urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V

    .line 249
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fusepowered/m2/common/UrlHandler;->mAlreadySucceeded:Z
    :try_end_0
    .catch Lcom/fusepowered/m2/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "destinationUri":Landroid/net/Uri;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "urlAction":Lcom/fusepowered/m2/common/UrlAction;
    :cond_2
    return-void

    .line 252
    .restart local v0    # "destinationUri":Landroid/net/Uri;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "urlAction":Lcom/fusepowered/m2/common/UrlAction;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;
    invoke-virtual {v1}, Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    move-object v4, v5

    goto :goto_1

    .line 259
    .end local v1    # "e":Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;
    .end local v5    # "urlAction":Lcom/fusepowered/m2/common/UrlAction;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Link ignored. Unable to handle url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "errorMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method shouldSkipShowMoPubBrowser()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/fusepowered/m2/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    return v0
.end method
