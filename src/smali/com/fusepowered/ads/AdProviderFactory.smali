.class public Lcom/fusepowered/ads/AdProviderFactory;
.super Ljava/lang/Object;
.source "AdProviderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdProviderFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateVersion(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/ads/APIVersion;Lcom/fusepowered/ads/APIVersion;Lcom/fusepowered/ads/APIVersion;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 13
    .param p1, "provider"    # Lcom/fusepowered/ads/adapters/AdAdapter;
    .param p2, "sdkVersion"    # Lcom/fusepowered/ads/APIVersion;
    .param p3, "minimumAdapterVersion"    # Lcom/fusepowered/ads/APIVersion;
    .param p4, "maximumAdapterVersion"    # Lcom/fusepowered/ads/APIVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/ads/adapters/AdAdapter;",
            "Lcom/fusepowered/ads/APIVersion;",
            "Lcom/fusepowered/ads/APIVersion;",
            "Lcom/fusepowered/ads/APIVersion;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/APIVersion;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/APIVersion;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, "blacklistedAdapterVersions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/APIVersion;>;"
    .local p6, "blacklistedProviderVersions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/ads/APIVersion;>;"
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->adapterVersion()Lcom/fusepowered/ads/APIVersion;

    move-result-object v2

    .line 70
    .local v2, "adapterVersion":Lcom/fusepowered/ads/APIVersion;
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->providerVersion()Lcom/fusepowered/ads/APIVersion;

    move-result-object v8

    .line 71
    .local v8, "providerVersion":Lcom/fusepowered/ads/APIVersion;
    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;

    move-result-object v4

    .line 74
    .local v4, "minimumSDKVersion":Lcom/fusepowered/ads/APIVersion;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/fusepowered/ads/APIVersion;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_7

    :cond_0
    const/4 v7, 0x1

    .line 75
    .local v7, "providerMeetsMinimumVersion":Z
    :goto_0
    if-nez v7, :cond_1

    .line 76
    const-string v10, "AdProviderFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ad Provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " could not be loaded as its adapter version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") does not meet the minimum required version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad Provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " could not be loaded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 81
    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/fusepowered/ads/APIVersion;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_8

    :cond_2
    const/4 v6, 0x1

    .line 82
    .local v6, "providerMeetsMaximumVersion":Z
    :goto_1
    if-nez v6, :cond_3

    .line 83
    const-string v10, "AdProviderFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ad Provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " could not be loaded as its adapter version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") does not meet the maximum required version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad Provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " could not be loaded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 88
    :cond_3
    invoke-virtual {p2, v4}, Lcom/fusepowered/ads/APIVersion;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_9

    const/4 v9, 0x1

    .line 89
    .local v9, "sdkMeetsMinimumVersion":Z
    :goto_2
    if-nez v9, :cond_4

    .line 90
    const-string v10, "AdProviderFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ad Provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " could not be loaded as it requires SDK version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") does not meet the minimum required version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SDK Version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " could not be loaded: SDK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 95
    :cond_4
    if-eqz p5, :cond_a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v1, 0x1

    .line 96
    .local v1, "adapterIsBlacklisted":Z
    :goto_3
    if-eqz v1, :cond_5

    .line 97
    const-string v10, "AdProviderFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ad Provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " could not be loaded as the adapter version is blacklisted("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad Adapter version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is blacklisted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 102
    :cond_5
    if-eqz p6, :cond_b

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x1

    .line 103
    .local v5, "providerIsBlacklisted":Z
    :goto_4
    if-eqz v5, :cond_6

    .line 104
    const-string v10, "AdProviderFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ad Provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " could not be loaded as the provider version is blacklisted("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad Provider version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/AdAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/fusepowered/ads/APIVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is blacklisted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/log/FuseLog;->TOAST(Ljava/lang/String;)V

    .line 108
    :cond_6
    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    if-eqz v9, :cond_c

    if-nez v1, :cond_c

    if-nez v5, :cond_c

    const/4 v3, 0x1

    .line 109
    .local v3, "isValid":Z
    :goto_5
    return v3

    .line 74
    .end local v1    # "adapterIsBlacklisted":Z
    .end local v3    # "isValid":Z
    .end local v5    # "providerIsBlacklisted":Z
    .end local v6    # "providerMeetsMaximumVersion":Z
    .end local v7    # "providerMeetsMinimumVersion":Z
    .end local v9    # "sdkMeetsMinimumVersion":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 81
    .restart local v7    # "providerMeetsMinimumVersion":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 88
    .restart local v6    # "providerMeetsMaximumVersion":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 95
    .restart local v9    # "sdkMeetsMinimumVersion":Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 102
    .restart local v1    # "adapterIsBlacklisted":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 108
    .restart local v5    # "providerIsBlacklisted":Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_5
.end method


# virtual methods
.method public createAdProvider(Lcom/fusepowered/api/model/AdProviderConfig;)Lcom/fusepowered/ads/adapters/AdAdapter;
    .locals 12
    .param p1, "providerConfig"    # Lcom/fusepowered/api/model/AdProviderConfig;

    .prologue
    const/4 v11, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    .local v10, "providerClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 24
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    iget-object v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/ads/adapters/AdAdapter;

    .line 27
    .local v1, "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->sdkVersion:Lcom/fusepowered/ads/APIVersion;

    iget-object v3, p1, Lcom/fusepowered/api/model/AdProviderConfig;->minimumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

    iget-object v4, p1, Lcom/fusepowered/api/model/AdProviderConfig;->maximumAdapterVersion:Lcom/fusepowered/ads/APIVersion;

    iget-object v5, p1, Lcom/fusepowered/api/model/AdProviderConfig;->blacklistedAdapterVersions:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/fusepowered/api/model/AdProviderConfig;->blacklistedProviderVersions:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/ads/AdProviderFactory;->validateVersion(Lcom/fusepowered/ads/adapters/AdAdapter;Lcom/fusepowered/ads/APIVersion;Lcom/fusepowered/ads/APIVersion;Lcom/fusepowered/ads/APIVersion;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v9

    .line 34
    .local v9, "isValidVersion":Z
    if-nez v9, :cond_0

    move-object v1, v11

    .line 59
    .end local v1    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v7    # "classLoader":Ljava/lang/ClassLoader;
    .end local v9    # "isValidVersion":Z
    :goto_0
    return-object v1

    .line 37
    .restart local v1    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .restart local v7    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v9    # "isValidVersion":Z
    :cond_0
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->isFuseAd:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->isFuseAd:Z

    .line 38
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->isMRaid:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->isMraid:Z

    .line 39
    iget v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->timeout:I

    iput v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->timeout:I

    .line 40
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->isRewarded:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRewarded:Z

    .line 41
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->isRTN:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->isRTN:Z

    .line 42
    iget-wide v2, p1, Lcom/fusepowered/api/model/AdProviderConfig;->closeButtonDelay:J

    iput-wide v2, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->closeButtonDelay:J

    .line 43
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->returnToInterstitial:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->returnToInterstitial:Z

    .line 44
    iget v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->rotateMode:I

    iput v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->rotateMode:I

    .line 45
    iget v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->rewardTimer:I

    iput v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->rewardTimer:I

    .line 46
    iget-object v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->maxVastFileSize:Ljava/lang/String;

    iput-object v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->maxVastFileSize:Ljava/lang/String;

    .line 47
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->shouldValidateSchema:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->shouldValidateSchema:Z

    .line 48
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->isVideo:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->isVideo:Z

    .line 49
    iget-boolean v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->shouldPreload:Z

    iput-boolean v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->shouldPreload:Z

    .line 50
    iget v0, p1, Lcom/fusepowered/api/model/AdProviderConfig;->backgroundColor:I

    iput v0, v1, Lcom/fusepowered/ads/adapters/AdAdapter;->backgroundColor:I

    .line 51
    const-string v0, "AdProviderFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading Ad Adapter: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/fusepowered/api/model/AdProviderConfig;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/api/model/AdProviderConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    .end local v1    # "provider":Lcom/fusepowered/ads/adapters/AdAdapter;
    .end local v7    # "classLoader":Ljava/lang/ClassLoader;
    .end local v9    # "isValidVersion":Z
    :catch_0
    move-exception v8

    .line 55
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const-string v0, "AdProviderFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad provider not included in this build: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v1, v11

    .line 59
    goto/16 :goto_0

    .line 56
    :catch_1
    move-exception v8

    .line 57
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AdProviderFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Provider could not be initialized due to an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/api/model/AdProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
