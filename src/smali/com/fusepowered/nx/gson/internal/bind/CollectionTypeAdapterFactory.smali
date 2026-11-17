.class public final Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/fusepowered/nx/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 7
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
    .line 44
    .local p2, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 46
    .local v5, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 47
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    const/4 v4, 0x0

    .line 57
    :goto_0
    return-object v4

    .line 51
    :cond_0
    invoke-static {v5, v3}, Lcom/fusepowered/nx/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    .local v1, "elementType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v2

    .line 53
    .local v2, "elementTypeAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    iget-object v6, p0, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-virtual {v6, p2}, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 56
    .local v0, "constructor":Lcom/fusepowered/nx/gson/internal/ObjectConstructor;, "Lcom/fusepowered/nx/gson/internal/ObjectConstructor<TT;>;"
    new-instance v4, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/fusepowered/nx/gson/Gson;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/TypeAdapter;Lcom/fusepowered/nx/gson/internal/ObjectConstructor;)V

    .line 57
    .local v4, "result":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
