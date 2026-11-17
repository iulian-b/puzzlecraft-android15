.class public final Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/fusepowered/nx/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;Z)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;
    .param p2, "complexMapKeySerialization"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .line 112
    iput-boolean p2, p0, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method private getKeyAdapter(Lcom/fusepowered/nx/gson/Gson;Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .param p1, "context"    # Lcom/fusepowered/nx/gson/Gson;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/fusepowered/nx/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 12
    .param p1, "gson"    # Lcom/fusepowered/nx/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/Gson;",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 118
    .local v11, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 119
    .local v9, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v11}, Lcom/fusepowered/nx/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 124
    .local v10, "rawTypeOfSrc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v11, v10}, Lcom/fusepowered/nx/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 125
    .local v8, "keyAndValueTypes":[Ljava/lang/reflect/Type;
    aget-object v1, v8, v2

    invoke-direct {p0, p1, v1}, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/fusepowered/nx/gson/Gson;Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v4

    .line 126
    .local v4, "keyAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    aget-object v1, v8, v5

    invoke-static {v1}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v6

    .line 127
    .local v6, "valueAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/internal/ObjectConstructor;

    move-result-object v7

    .line 131
    .local v7, "constructor":Lcom/fusepowered/nx/gson/internal/ObjectConstructor;, "Lcom/fusepowered/nx/gson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v8, v2

    aget-object v5, v8, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;Lcom/fusepowered/nx/gson/Gson;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/TypeAdapter;Lcom/fusepowered/nx/gson/internal/ObjectConstructor;)V

    .line 133
    .local v0, "result":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
