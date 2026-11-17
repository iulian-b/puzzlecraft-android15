.class public final Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/fusepowered/sa/android/publish/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/fusepowered/sa/android/publish/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/sa/android/publish/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/sa/android/publish/gson/Gson;",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/Gson;->getAdapter(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/sa/android/publish/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/fusepowered/sa/android/publish/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/internal/ObjectConstructor;

    move-result-object v3

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/fusepowered/sa/android/publish/gson/Gson;Ljava/lang/reflect/Type;Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;Lcom/fusepowered/sa/android/publish/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
