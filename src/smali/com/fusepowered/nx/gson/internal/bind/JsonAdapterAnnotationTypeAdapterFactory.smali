.class public final Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/fusepowered/nx/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .line 38
    return-void
.end method

.method static getTypeAdapter(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/annotations/JsonAdapter;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 5
    .param p0, "constructorConstructor"    # Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;
    .param p1, "gson"    # Lcom/fusepowered/nx/gson/Gson;
    .param p3, "annotation"    # Lcom/fusepowered/nx/gson/annotations/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;",
            "Lcom/fusepowered/nx/gson/Gson;",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/fusepowered/nx/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "fieldType":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;"
    invoke-interface {p3}, Lcom/fusepowered/nx/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v2

    .line 53
    .local v2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    move-object v0, v2

    .line 55
    .local v0, "typeAdapter":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/fusepowered/nx/gson/TypeAdapter<*>;>;"
    invoke-static {v0}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/internal/ObjectConstructor;

    move-result-object v3

    invoke-interface {v3}, Lcom/fusepowered/nx/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 59
    .end local v0    # "typeAdapter":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/fusepowered/nx/gson/TypeAdapter<*>;>;"
    :goto_0
    return-object v3

    .line 57
    :cond_0
    const-class v3, Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    move-object v1, v2

    .line 59
    .local v1, "typeAdapterFactory":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/fusepowered/nx/gson/TypeAdapterFactory;>;"
    invoke-static {v1}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/internal/ObjectConstructor;

    move-result-object v3

    invoke-interface {v3}, Lcom/fusepowered/nx/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v3, p1, p2}, Lcom/fusepowered/nx/gson/TypeAdapterFactory;->create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v3

    goto :goto_0

    .line 64
    .end local v1    # "typeAdapterFactory":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/fusepowered/nx/gson/TypeAdapterFactory;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 3
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
    .line 42
    .local p2, "targetType":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fusepowered/nx/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/gson/annotations/JsonAdapter;

    .line 43
    .local v0, "annotation":Lcom/fusepowered/nx/gson/annotations/JsonAdapter;
    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p2, v0}, Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/annotations/JsonAdapter;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v1

    goto :goto_0
.end method
