.class public Lcom/fusepowered/nx/monetization/manager/StringsManager;
.super Ljava/lang/Object;
.source "StringsManager.java"


# static fields
.field private static stringResourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Lcom/fusepowered/nx/monetization/enums/StringResources;)Ljava/lang/String;
    .locals 3
    .param p0, "resourceName"    # Lcom/fusepowered/nx/monetization/enums/StringResources;

    .prologue
    .line 43
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 44
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/StringsManager;->initialize()V

    .line 46
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/enums/StringResources;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "stringFromXml":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "stringFromXml":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "stringFromXml":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static initialize()V
    .locals 5

    .prologue
    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fusepowered/nx/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    .line 34
    sget-object v1, Lcom/fusepowered/nx/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 36
    sget-object v1, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/fusepowered/nx/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
