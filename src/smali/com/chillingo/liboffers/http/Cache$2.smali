.class Lcom/chillingo/liboffers/http/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/http/Cache;->clearCacheOfAllItemsExpiringBefore(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/http/Cache;

.field final synthetic val$date:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/http/Cache;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/chillingo/liboffers/http/Cache$2;->this$0:Lcom/chillingo/liboffers/http/Cache;

    iput-object p2, p0, Lcom/chillingo/liboffers/http/Cache$2;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 146
    const-string v6, "ptocache_"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    const-string v6, "_-_"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "locationOfSaparator":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 172
    .end local v2    # "locationOfSaparator":I
    :cond_0
    :goto_0
    return v5

    .line 154
    .restart local v2    # "locationOfSaparator":I
    :cond_1
    const-string v6, "_-_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "timestampString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v3, "timestampMillis":Ljava/lang/Long;
    iget-object v6, p0, Lcom/chillingo/liboffers/http/Cache$2;->val$date:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 165
    .local v1, "lastAvailableMillis":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 168
    const/4 v5, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "lastAvailableMillis":Ljava/lang/Long;
    .end local v3    # "timestampMillis":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
