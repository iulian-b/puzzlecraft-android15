.class public final Lcom/fusepowered/nx/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/fusepowered/nx/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/fusepowered/nx/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 176
    sget-object v1, Lcom/fusepowered/nx/gson/internal/Excluder;->DEFAULT:Lcom/fusepowered/nx/gson/internal/Excluder;

    sget-object v2, Lcom/fusepowered/nx/gson/FieldNamingPolicy;->IDENTITY:Lcom/fusepowered/nx/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/fusepowered/nx/gson/LongSerializationPolicy;->DEFAULT:Lcom/fusepowered/nx/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/fusepowered/nx/gson/Gson;-><init>(Lcom/fusepowered/nx/gson/internal/Excluder;Lcom/fusepowered/nx/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/fusepowered/nx/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/nx/gson/internal/Excluder;Lcom/fusepowered/nx/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/fusepowered/nx/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .param p1, "excluder"    # Lcom/fusepowered/nx/gson/internal/Excluder;
    .param p2, "fieldNamingPolicy"    # Lcom/fusepowered/nx/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "serializeSpecialFloatingPointValues"    # Z
    .param p10, "longSerializationPolicy"    # Lcom/fusepowered/nx/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/internal/Excluder;",
            "Lcom/fusepowered/nx/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/fusepowered/nx/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/fusepowered/nx/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/InstanceCreator<*>;>;"
    .local p11, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 125
    new-instance v1, Lcom/fusepowered/nx/gson/Gson$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/gson/Gson$1;-><init>(Lcom/fusepowered/nx/gson/Gson;)V

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->deserializationContext:Lcom/fusepowered/nx/gson/JsonDeserializationContext;

    .line 132
    new-instance v1, Lcom/fusepowered/nx/gson/Gson$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/gson/Gson$2;-><init>(Lcom/fusepowered/nx/gson/Gson;)V

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->serializationContext:Lcom/fusepowered/nx/gson/JsonSerializationContext;

    .line 188
    new-instance v1, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    .line 189
    iput-boolean p4, p0, Lcom/fusepowered/nx/gson/Gson;->serializeNulls:Z

    .line 190
    iput-boolean p6, p0, Lcom/fusepowered/nx/gson/Gson;->generateNonExecutableJson:Z

    .line 191
    iput-boolean p7, p0, Lcom/fusepowered/nx/gson/Gson;->htmlSafe:Z

    .line 192
    iput-boolean p8, p0, Lcom/fusepowered/nx/gson/Gson;->prettyPrinting:Z

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/gson/TypeAdapterFactory;>;"
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/fusepowered/nx/gson/Gson;->longAdapter(Lcom/fusepowered/nx/gson/LongSerializationPolicy;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/fusepowered/nx/gson/Gson;->doubleAdapter(Z)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/fusepowered/nx/gson/Gson;->floatAdapter(Z)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/fusepowered/nx/gson/TypeAdapter;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/fusepowered/nx/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v1, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/fusepowered/nx/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/fusepowered/nx/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;Lcom/fusepowered/nx/gson/FieldNamingStrategy;Lcom/fusepowered/nx/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->factories:Ljava/util/List;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/gson/Gson;D)V
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/gson/Gson;
    .param p1, "x1"    # D

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/fusepowered/nx/gson/stream/JsonReader;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/fusepowered/nx/gson/stream/JsonReader;

    .prologue
    .line 782
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->peek()Lcom/fusepowered/nx/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/nx/gson/stream/JsonToken;->END_DOCUMENT:Lcom/fusepowered/nx/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 783
    new-instance v1, Lcom/fusepowered/nx/gson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/fusepowered/nx/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Lcom/fusepowered/nx/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/fusepowered/nx/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/fusepowered/nx/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 787
    .end local v0    # "e":Lcom/fusepowered/nx/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/fusepowered/nx/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/fusepowered/nx/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 790
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 298
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    sget-object v0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/nx/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/gson/Gson$3;-><init>(Lcom/fusepowered/nx/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    sget-object v0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/nx/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/gson/Gson$4;-><init>(Lcom/fusepowered/nx/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/fusepowered/nx/gson/LongSerializationPolicy;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .param p1, "longSerializationPolicy"    # Lcom/fusepowered/nx/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/LongSerializationPolicy;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/fusepowered/nx/gson/LongSerializationPolicy;->DEFAULT:Lcom/fusepowered/nx/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 307
    sget-object v0, Lcom/fusepowered/nx/gson/internal/bind/TypeAdapters;->LONG:Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/nx/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/gson/Gson$5;-><init>(Lcom/fusepowered/nx/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    iget-boolean v1, p0, Lcom/fusepowered/nx/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 646
    const-string v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    :cond_0
    new-instance v0, Lcom/fusepowered/nx/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 649
    .local v0, "jsonWriter":Lcom/fusepowered/nx/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/fusepowered/nx/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 650
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 652
    :cond_1
    iget-boolean v1, p0, Lcom/fusepowered/nx/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 653
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Lcom/fusepowered/nx/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 848
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 849
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/fusepowered/nx/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lcom/fusepowered/nx/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 873
    const/4 v0, 0x0

    .line 875
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/nx/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/fusepowered/nx/gson/internal/bind/JsonTreeReader;-><init>(Lcom/fusepowered/nx/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Lcom/fusepowered/nx/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lcom/fusepowered/nx/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;,
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v1, 0x1

    .line 803
    .local v1, "isEmpty":Z
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->isLenient()Z

    move-result v3

    .line 804
    .local v3, "oldLenient":Z
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/fusepowered/nx/gson/stream/JsonReader;->setLenient(Z)V

    .line 806
    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->peek()Lcom/fusepowered/nx/gson/stream/JsonToken;

    .line 807
    const/4 v1, 0x0

    .line 808
    invoke-static {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v5

    .line 809
    .local v5, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v5}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v4

    .line 810
    .local v4, "typeAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    invoke-virtual {v4, p1}, Lcom/fusepowered/nx/gson/TypeAdapter;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 827
    .local v2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lcom/fusepowered/nx/gson/stream/JsonReader;->setLenient(Z)V

    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v4    # "typeAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    .end local v5    # "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    :goto_0
    return-object v2

    .line 812
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 818
    const/4 v2, 0x0

    .line 827
    invoke-virtual {p1, v3}, Lcom/fusepowered/nx/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 820
    :cond_0
    :try_start_1
    new-instance v6, Lcom/fusepowered/nx/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/fusepowered/nx/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v6

    invoke-virtual {p1, v3}, Lcom/fusepowered/nx/gson/stream/JsonReader;->setLenient(Z)V

    throw v6

    .line 821
    :catch_1
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v6, Lcom/fusepowered/nx/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/fusepowered/nx/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 823
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 825
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/fusepowered/nx/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/fusepowered/nx/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonSyntaxException;,
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 747
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/fusepowered/nx/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 748
    .local v0, "jsonReader":Lcom/fusepowered/nx/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Lcom/fusepowered/nx/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 749
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/fusepowered/nx/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/fusepowered/nx/gson/stream/JsonReader;)V

    .line 750
    invoke-static {p2}, Lcom/fusepowered/nx/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;,
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Lcom/fusepowered/nx/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 775
    .local v0, "jsonReader":Lcom/fusepowered/nx/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Lcom/fusepowered/nx/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 776
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/fusepowered/nx/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/fusepowered/nx/gson/stream/JsonReader;)V

    .line 777
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 696
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/fusepowered/nx/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 721
    const/4 v1, 0x0

    .line 725
    :goto_0
    return-object v1

    .line 723
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 725
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "type":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 336
    .local v0, "cached":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_0

    .line 371
    .end local v0    # "cached":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    :goto_0
    return-object v0

    .line 340
    .restart local v0    # "cached":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    :cond_0
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 341
    .local v7, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v6, 0x0

    .line 342
    .local v6, "requiresThreadLocalCleanup":Z
    if-nez v7, :cond_1

    .line 343
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 344
    .restart local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 345
    const/4 v6, 0x1

    .line 349
    :cond_1
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;

    .line 350
    .local v5, "ongoingCall":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v5, :cond_2

    move-object v0, v5

    .line 351
    goto :goto_0

    .line 355
    :cond_2
    :try_start_0
    new-instance v1, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 356
    .local v1, "call":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    .line 359
    .local v3, "factory":Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/fusepowered/nx/gson/TypeAdapterFactory;->create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v2

    .line 360
    .local v2, "candidate":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_3

    .line 361
    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/fusepowered/nx/gson/TypeAdapter;)V

    .line 362
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    if-eqz v6, :cond_4

    .line 371
    iget-object v8, p0, Lcom/fusepowered/nx/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 366
    .end local v2    # "candidate":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GSON cannot handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v1    # "call":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    if-eqz v6, :cond_6

    .line 371
    iget-object v9, p0, Lcom/fusepowered/nx/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v8
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/fusepowered/nx/gson/TypeAdapterFactory;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 7
    .param p1, "skipPast"    # Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "type":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 427
    .local v3, "skipPastFound":Z
    iget-object v4, p0, Lcom/fusepowered/nx/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/nx/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    .line 430
    .local v1, "factory":Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    if-nez v3, :cond_2

    .line 431
    if-ne v1, p1, :cond_1

    .line 432
    const/4 v3, 0x1

    goto :goto_0

    .line 437
    :cond_2
    invoke-interface {v1, p0, p2}, Lcom/fusepowered/nx/gson/TypeAdapterFactory;->create(Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    .line 438
    .local v0, "candidate":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_1

    .line 439
    return-object v0

    .line 442
    .end local v0    # "candidate":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    .end local v1    # "factory":Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSON cannot serialize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toJson(Lcom/fusepowered/nx/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonElement"    # Lcom/fusepowered/nx/gson/JsonElement;

    .prologue
    .line 618
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 619
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 620
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    sget-object v0, Lcom/fusepowered/nx/gson/JsonNull;->INSTANCE:Lcom/fusepowered/nx/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Lcom/fusepowered/nx/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 533
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 534
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 535
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/fusepowered/nx/gson/JsonElement;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V
    .locals 5
    .param p1, "jsonElement"    # Lcom/fusepowered/nx/gson/JsonElement;
    .param p2, "writer"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 662
    .local v2, "oldLenient":Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 663
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 664
    .local v1, "oldHtmlSafe":Z
    iget-boolean v4, p0, Lcom/fusepowered/nx/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 665
    invoke-virtual {p2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 666
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lcom/fusepowered/nx/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 668
    :try_start_0
    invoke-static {p1, p2}, Lcom/fusepowered/nx/gson/internal/Streams;->write(Lcom/fusepowered/nx/gson/JsonElement;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {p2, v2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 673
    invoke-virtual {p2, v1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 674
    invoke-virtual {p2, v3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 676
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/fusepowered/nx/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/fusepowered/nx/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 673
    invoke-virtual {p2, v1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 674
    invoke-virtual {p2, v3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "jsonElement"    # Lcom/fusepowered/nx/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    invoke-static {p2}, Lcom/fusepowered/nx/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/fusepowered/nx/gson/stream/JsonWriter;

    move-result-object v1

    .line 634
    .local v1, "jsonWriter":Lcom/fusepowered/nx/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Lcom/fusepowered/nx/gson/JsonElement;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    return-void

    .line 635
    .end local v1    # "jsonWriter":Lcom/fusepowered/nx/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 553
    if-eqz p1, :cond_0

    .line 554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/gson/JsonNull;->INSTANCE:Lcom/fusepowered/nx/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/gson/Gson;->toJson(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {p2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fusepowered/nx/gson/Gson;->getAdapter(Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    .line 593
    .local v0, "adapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 594
    .local v3, "oldLenient":Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 595
    invoke-virtual {p3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 596
    .local v2, "oldHtmlSafe":Z
    iget-boolean v5, p0, Lcom/fusepowered/nx/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 597
    invoke-virtual {p3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 598
    .local v4, "oldSerializeNulls":Z
    iget-boolean v5, p0, Lcom/fusepowered/nx/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 600
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/fusepowered/nx/gson/TypeAdapter;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {p3, v3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 605
    invoke-virtual {p3, v2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 606
    invoke-virtual {p3, v4}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 608
    return-void

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/fusepowered/nx/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/fusepowered/nx/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setLenient(Z)V

    .line 605
    invoke-virtual {p3, v2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 606
    invoke-virtual {p3, v4}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/nx/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    invoke-static {p3}, Lcom/fusepowered/nx/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/fusepowered/nx/gson/stream/JsonWriter;

    move-result-object v1

    .line 579
    .local v1, "jsonWriter":Lcom/fusepowered/nx/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    return-void

    .line 580
    .end local v1    # "jsonWriter":Lcom/fusepowered/nx/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/fusepowered/nx/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/fusepowered/nx/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/fusepowered/nx/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    sget-object v0, Lcom/fusepowered/nx/gson/JsonNull;->INSTANCE:Lcom/fusepowered/nx/gson/JsonNull;

    .line 472
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/fusepowered/nx/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 492
    new-instance v0, Lcom/fusepowered/nx/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/fusepowered/nx/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 493
    .local v0, "writer":Lcom/fusepowered/nx/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V

    .line 494
    invoke-virtual {v0}, Lcom/fusepowered/nx/gson/internal/bind/JsonTreeWriter;->get()Lcom/fusepowered/nx/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/fusepowered/nx/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/gson/Gson;->constructorConstructor:Lcom/fusepowered/nx/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
