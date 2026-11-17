.class Lcom/chillingo/liboffers/http/Cache$3;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/Cache;->clearCacheOfAllItemsWithId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/Cache;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/Cache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/chillingo/liboffers/http/Cache$3;->this$0:Lcom/chillingo/liboffers/http/Cache;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/Cache$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v3, "ptocache_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const-string v3, "_-_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "locationOfSaparator":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 206
    .end local v0    # "locationOfSaparator":I
    :cond_0
    :goto_0
    return v2

    .line 197
    .restart local v0    # "locationOfSaparator":I
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "stringWithoutTimestamp":Ljava/lang/String;
    iget-object v3, p0, Lcom/chillingo/liboffers/http/Cache$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v2, 0x1

    goto :goto_0
.end method
